<?php

namespace App\Models;

use CodeIgniter\Model;

class BerandaModel extends Model
{
    public function reportTransaksi($tahun)
    {
        return $this->db->table('sale_detail as sd')
            ->select('MONTH(s.created_at) month, SUM(sd.total_price) total')
            ->join('sale s', 'sale_id')
            ->where('YEAR(s.created_at)', $tahun)
            ->orderBy('MONTH(s.created_at)')
            ->get()->getResultArray();

        // return $this->db->query("SELECT MONTH(s.created_at) month, SUM(sd.total_price) total FROM sale_detail sd
        // JOIN sale s ON s.sale_id = sd.sale_id
        // WHERE YEAR(s.created_at) = $tahun
        // GROUP BY MONTH(s.created_at)
        // ORDER BY MONTH(s.created_at)") -> getResultArray();
    }

    public function reportCustomer($tahun)
    {
        return $this->db->table('customer')
            ->select('MONTH(created_at) month, COUNT(*) total')
            ->where('YEAR(created_at)', $tahun)
            ->groupBy('MONTH(created_at)')
            ->orderBy('MONTH(created_at)')
            ->get()->getResultArray();

        // return $this->db->query("SELECT MONTH(created_at) 'month', COUNT(*) count_customer FROM customer
        // WHERE YEAR(created_at) = $tahun
        // GROUP BY MONTH(created_at)
        // ORDER BY MONTH(created_at)") -> getResultArray();
    }

    public function reportPembelian($tahun)
    {
        return $this->db->table('purchase_detail as pd')
            ->select('MONTH(p.created_at) month, SUM(pd.total_price) total')
            ->join('purchase p', 'purchase_id')
            ->where('YEAR(p.created_at)', $tahun)
            ->orderBy('MONTH(p.created_at)')
            ->get()->getResultArray();
    }

    public function reportSupplier($tahun)
    {
        return $this->db->table('supplier')
            ->select('MONTH(created_at) month, COUNT(*) total')
            ->where('YEAR(created_at)', $tahun)
            ->groupBy('MONTH(created_at)')
            ->orderBy('MONTH(created_at)')
            ->get()->getResultArray();
    }
}
