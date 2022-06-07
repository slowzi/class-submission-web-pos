<?php

namespace App\Controllers;
use \App\Models\SupplierModel;
use App\Entities\SupplierEntity;

class Supplier extends BaseController
{
    private $supplierModel;
    public function __construct()
    {
        $this->supplierModel = new SupplierModel();
    }

    public function index()
    {
        $dataSupplier = $this->supplierModel->findAll();
        $data =[
            'title' => 'Data Supplier',
            'result' => $dataSupplier
        ];

        return view('supplier/list', $data);
    }

    public function create()
    {
        // session();
        $data = [
            'title' => 'Tambah Supplier'
            // 'category' => $this->catModel->findAll(),
            // 'validation' => \Config\Services::validation()
            
        ];
        return view('supplier/create', $data);
    }

    public function save()
    {
        $supplier = new SupplierEntity();
        $data = [    
            $supplier -> name = $this->request->getVar('nama'),
            $supplier -> address = $this->request->getVar('alamat'),
            $supplier -> email = $this->request->getVar('email'),
            $supplier -> phone = $this->request->getVar('telp'),
        ];

        // $supplier->fill($data);
        // setEmail($email);
        // getName();
        $this->supplierModel->save($supplier);

        session()->setFlashdata("msg", "Data berhasil ditambahkan!");
        return redirect()->to('/supplier');
    }

    public function edit($id)
    {
        $dataSupplier = $this->supplierModel->where(['supplier_id' => $id])->first();
        // Jika data kosong
        if (empty($dataSupplier)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException("Supplier dengan ID: $id tidak ditemukan!");
        }

        $data = [
            'title' => 'Ubah Supplier',
            // 'category' => $this->catModel->findAll(),
            // 'validation' => \Config\Services::validation(),
            'result' => $dataSupplier
        ];

        return view('supplier/edit', $data);
    }

    public function update($id)
    {
        $supplier = new SupplierEntity();
        $data = [    
            "supplier_id" => $id,
            "name" => $this->request->getVar('nama'),
            "address" => $this->request->getVar('alamat'),
            "email" => $this->request->getVar('email'),
            "phone" => $this->request->getVar('telp'),
        ];

        $supplier->fill($data);
        $this->supplierModel->save($supplier);

        session()->setFlashdata("msg", "Data berhasil diperbarui!");
        return redirect()->to('/supplier');
    }

    public function delete($id)
    {
        $this->supplierModel->delete($id);
        session()->setFlashdata("msg", "Data berhasil dihapus!");
        return redirect()->to('/supplier');
    }

    public function setEmail(string $email)
    {
        $this->attributes["email"] = strtolower($email);
        return $this;
    }

    public function getName()
    {
        return strtoupper($this->attributes['name']);
    }
}
