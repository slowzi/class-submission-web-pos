<?php

namespace App\Models;
use App\Controllers\Pembelian;
use CodeIgniter\Model;

class SupplierModel extends Model
{
    //Nama table
    protected $table = "supplier";
    //Atribut yang digunakan menjadi primary key
    protected $primaryKey = "supplier_id";
    //Atribut untuk menyimpan created_at dan updated_at
    protected $useTimestamps = true;
    protected $allowedFields = ['name', 'address', 'email', 'phone'];
    protected $returnType = 'App\Entities\SupplierEntity';
}