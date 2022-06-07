<?php

namespace App\Models;
use CodeIgniter\Model;

class PurchaseModel extends Model
{
    // Nama Tabel
    protected $table = 'purchase';
    protected $useTimestamps = true;
    protected $allowedFields = ['purchase_id', 'user_id', 'supplier_id'];

    public function getReport()
    {
        return $this->db->table('purchase_detail as sd')
        ->select('p.purchase_id, p.created_at tgl_transaksi, us.id user_id, us.firstname, us.lastname, us.username,
        s.supplier_id, s.name name_supp, SUM(sd.total_price) total')
        ->join('purchase p', 'purchase_id')
        ->join('users us', 'us.id = p.user_id')
        ->join('supplier s', 'supplier_id', 'left')
        ->groupBy('p.purchase_id')
        ->get()->getResultArray();
    }

    public function getInvoice($id)
    {
        return $this->db->table('purchase_detail as pd')
        ->select('pd.purchase_id, p.created_at, b.title, pd.amount, pd.price')
        ->join('purchase p', 'purchase_id')
        ->join('book b', 'book_id', 'left')
        // ->join('customer c', 'customer_id', 'left')
        // ->groupBy('s.sale_id')
        ->where('p.purchase_id', $id)
        ->get()->getResultArray();
    }
}