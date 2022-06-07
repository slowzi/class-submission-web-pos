<?php

namespace App\Models;
use CodeIgniter\Model;

class SaleModel extends Model
{
    // Nama Tabel
    protected $table = 'sale';
    protected $useTimestamps = true;
    protected $allowedFields = ['sale_id', 'user_id', 'customer_id'];

    public function getReport()
    {
        return $this->db->table('sale_detail as sd')
        ->select('s.sale_id, s.created_at tgl_transaksi, us.id user_id, us.firstname, us.lastname, us.username,
        c.customer_id, c.name name_cust, c.no_customer, SUM(sd.total_price) total')
        ->join('sale s', 'sale_id')
        ->join('users us', 'us.id = s.user_id')
        ->join('customer c', 'customer_id', 'left')
        ->groupBy('s.sale_id')
        ->get()->getResultArray();
    }

    public function getInvoice($id)
    {
        return $this->db->table('sale_detail as sd')
        ->select('sd.sale_id, s.created_at, b.title, sd.amount, sd.price')
        ->join('sale s', 'sale_id')
        ->join('book b', 'book_id', 'left')
        // ->join('customer c', 'customer_id', 'left')
        // ->groupBy('s.sale_id')
        ->where('s.sale_id', $id)
        ->get()->getResultArray();
    }
}