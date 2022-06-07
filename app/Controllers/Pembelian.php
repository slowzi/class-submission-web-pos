<?php

namespace App\Controllers;

use \App\Models\BookModel;
use \App\Models\SupplierModel;
use \App\Models\PurchaseModel;
use \App\Models\PurchaseDetailModel;
use TCPDF;
use PhpOffice\PhpSpreadsheet\Spreadsheet;
use PhpOffice\PhpSpreadsheet\Writer\Xlsx;

class Pembelian extends BaseController
{
    private $book, $cart, $supp, $purchase, $purchaseDetail;
    public function __construct()
    {
        $this->book = new BookModel();
        $this->supp = new SupplierModel();
        $this->purchase = new PurchaseModel();
        $this->purchaseDetail = new PurchaseDetailModel();
        $this->cart = \Config\Services::cart();
    }

    public function index()
    {
        $this->cart->destroy();
        $dataBook = $this->book->getBook();
        $dataSupp = $this->supp->findAll();
        $data = [
            'title' => 'Pembelian',
            'dataBuku' => $dataBook,
            'dataSupp' => $dataSupp,
        ];
        return view('pembelian/list', $data);
    }

    public function showCart()
    {
        //Fungsi untuk menampilkan Cart
        $output = '';
        $no = 1;
        foreach ($this->cart->contents() as $items) {
            $output .= '
            <tr>
            <td>' . $no++ . '</td>
            <td>' . $items['name'] . '</td>
            <td>' . $items['qty'] . '</td>
            <td>' . number_to_currency($items['price'], 'IDR', 'id_ID', 2) . '</td>
            <td>' . number_to_currency(($items['subtotal']), 'IDR', 'id_ID', 2) . '</td>
            <td>
                <button id="' . $items['rowid'] . '" qty="' . $items['qty'] . '" class="ubah_cart btn btn-warning btn-xs"  title="Ubah Jumlah">
                    <i class="fa fa-edit"></i>
                </button>
                <button type="button" id="' . $items['rowid'] . '" class="hapus_cart btn btn-danger btn-xs">
                    <i class="fa fa-trash" title="Hapus"></i>
                </button>
            </td>
            </tr>
            ';
        }

        if (!$this->cart->contents()) {
            $output = '<tr><td colspan="7" align="center">Tidak ada transaksi!</td></tr>';
        }

        return $output;
    }

    public function loadCart()
    {
        // Load data cart
        echo $this->showCart();
    }

    public function addCart()
    {
        $this->cart->insert(array(
            'id'        => $this->request->getVar('id'),
            'qty'        => $this->request->getVar('qty'),
            'price'        => $this->request->getVar('price'),
            'name'        => $this->request->getVar('name')
        ));
        echo $this->showCart();
    }

    public function getTotal()
    {
        $totalBayar = 0;
        foreach ($this->cart->contents() as $items) {
            $totalBayar += $items['subtotal'];
        }
        echo number_to_currency($totalBayar, 'IDR', 'id_ID', 2);
    }

    public function updateCart()
    {
        $this->cart->update(array(
            'rowid'     => $this->request->getVar('rowid'),
            'qty'     => $this->request->getVar('qty')
        ));
        echo $this->showCart();
    }

    public function deleteCart($rowid)
    {
        // fungsi untuk menghapus item cart berdasarkan rowid
        $this->cart->remove($rowid);
        echo $this->showCart();
    }

    public function pembayaran()
    {
        // Mengcek apakah ada transaksi yang dilakukan
        if (!$this->cart->contents()) {
            // transaksi kosong
            $response = [
                'status' => false,
                'msg' => "Tidak ada transaksi!",
            ];
            echo json_encode($response);
        } else {
            // ada transaksi
            $totalBayar = 0;
            foreach ($this->cart->contents() as $items) {
                $totalBayar += $items['subtotal'];
            }

            $nominal = $this->request->getVar('nominal');
            $id = "B" . time();

            // Pengecekan apakan nominal yang dimasukan cukup atau kurang
            if ($nominal < $totalBayar) {
                $response = [
                    'status' => false,
                    'msg' => "Nominal pembayaran kurang!",
                ];
                echo json_encode($response);
            } else {
                // Jika nominal memenuhi, akan menyimpan data ditable purchase dan purchase_detail
                $this->purchase->save([
                    'purchase_id'   => $id,
                    'user_id'   => user()->id,
                    'supplier_id'   => $this->request->getVar('id-supp')
                ]);

                foreach ($this->cart->contents() as $items) {
                    $this->purchaseDetail->save([
                        'purchase_id'   => $id,
                        'book_id'   => $items['id'],
                        'amount'    => $items['qty'],
                        'price'     => $items['price'],
                        'total_price'   => $items['subtotal'],
                    ]);

                    // Mengurangi jumlah stock ditable book
                    // Kita getbook berdasarkan ID buku
                    $book = $this->book->where(['book_id' => $items['id']])->first();
                    $this->book->save([
                        'book_id'   => $items['id'],
                        'stock'   => $book['stock'] + $items['qty'],
                    ]);
                }

                $this->cart->destroy();
                $kembalian = $nominal - $totalBayar;

                $response = [
                    'status' => true,
                    'msg' => "Pembayaran berhasil!",
                    'data' => [
                        'kembalian' => number_to_currency($kembalian, 'IDR', 'id_ID', 2)
                    ]
                ];
                echo json_encode($response);
            }
        }
    }

    public function report()
    {
        $report = $this->purchase->getReport();
        $data = [
            'title' => 'Laporan Pembelian',
            'result' => $report,
        ];
        return view('pembelian/report', $data);
    }

    public function exportPDF()
    {
        $report = $this->purchase->getReport();
        $data = [
            'title' => 'Laporan Pembelian',
            'result' => $report,
        ];
        $html = view('pembelian/exportPDF', $data);

        $pdf = new TCPDF('L', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
        $pdf->setPrintHeader(false);
        $pdf->setPrintFooter(false);
        $pdf->AddPage();
        $pdf->writeHTML($html);
        $this->response->setContentType('application/pdf');
        $pdf->Output('laporan-pembelian.pdf', 'I');
    }

    public function exportExcel()
    {
        $report = $this->purchase->getReport();
        $spreadsheet = new Spreadsheet();
        // header / nama kolom
        $spreadsheet->setActiveSheetIndex(0)
            ->setCellValue('A1', 'No')
            ->setCellValue('B1', 'Nota')
            ->setCellValue('C1', 'Tgl Transaksi')
            ->setCellValue('D1', 'User')
            ->setCellValue('E1', 'Supplier')
            ->setCellValue('F1', 'Total');

        // tulis data transaksi ke cell
        $rows = 2;
        $no = 1;
        foreach ($report as $value) {
            $spreadsheet->setActiveSheetIndex(0)
                ->setCellValue('A' . $rows, $no++)
                ->setCellValue('B' . $rows, $value['purchase_id'])
                ->setCellValue('C' . $rows, $value['tgl_transaksi'])
                ->setCellValue('D' . $rows, $value['firstname'] . ' ' . $value['lastname'])
                ->setCellValue('E' . $rows, $value['name_supp'])
                ->setCellValue('F' . $rows, $value['total']);
            $rows++;
        }

        // tulis dalam format .xlsx
        $writer = new Xlsx($spreadsheet);
        $fileName = 'Laporan-Pembelian';

        // redirect hasil generate xlsx ke web client
        header('Content-Type: application/vnd.openxmlformats-officedocument.spreadsheetml.sheet');
        header('Content-Disposition: attachment;filename=' . $fileName . '.xlsx');
        header('Cache-Control: max-age=0');

        $writer->save('php://output');
        exit();
    }

    public function exportInvoice($id)
    {
        $report = $this->purchase->getInvoice($id);
        $data = [
            'title' => 'Invoice Pembelian',
            'result' => $report,
        ];
        $html = view('pembelian/exportinvoice', $data);

        $pdf = new TCPDF('L', PDF_UNIT, PDF_PAGE_FORMAT, true, 'UTF-8', false);
        $pdf->setPrintHeader(false);
        $pdf->setPrintFooter(false);
        $pdf->AddPage();
        $pdf->writeHTML($html);
        $this->response->setContentType('application/pdf');
        $pdf->Output('invoice-pembelian.pdf', 'I');
    }
}
