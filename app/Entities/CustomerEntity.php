<?php

namespace App\Entities;

use CodeIgniter\Entity\Entity;

class CustomerEntity extends Entity
{
    protected $datamap = [
        "nama" => 'name',
        "alamat" => 'address',
        "no" => 'no_customer',
        "jenis" => 'gender',
        "email" => 'email',
        "telp" => 'phone',
    ];
    protected $dates   = ['created_at', 'updated_at', 'deleted_at'];
    protected $casts   = [];

}
