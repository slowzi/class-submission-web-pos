<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;

class SupplierEntity extends Entity
{
    protected $datamap = [
        "nama" => 'name',
        "alamat" => 'address',
        "email" => 'email',
        "telp" => 'phone',
    ];
    protected $dates   = ['created_at', 'updated_at', 'deleted_at'];
    protected $casts   = [];


    // public function create()
    // {
    //     // session();
    //     $data = [
    //         'title' => 'Tambah Supplier'
    //         // 'category' => $this->catModel->findAll(),
    //         // 'validation' => \Config\Services::validation()
            
    //     ];
    //     return view('supplier/create', $data);
    // }
}
