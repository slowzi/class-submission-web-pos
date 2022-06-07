<?php

namespace App\Controllers;
use \App\Models\DistributorModel;
use App\Entities\DistributorEntity;

class Distributor extends BaseController
{
    private $distributorModel;
    public function __construct()
    {
        $this->distributorModel = new DistributorModel();
    }

    public function index()
    {
        $dataDistributor = $this->distributorModel->findAll();
        $data =[
            'title' => 'Data Distributor',
            'result' => $dataDistributor
        ];

        return view('distributor/list', $data);
    }

    public function create()
    {
        // session();
        $data = [
            'title' => 'Tambah Distributor'
            // 'category' => $this->catModel->findAll(),
            // 'validation' => \Config\Services::validation()
            
        ];
        return view('distributor/create', $data);
    }

    public function save()
    {
        $distributor = new DistributorEntity();
        $data = [    
            $distributor -> name = $this->request->getVar('nama'),
            $distributor -> address = $this->request->getVar('alamat'),
            $distributor -> email = $this->request->getVar('email'),
            $distributor -> phone = $this->request->getVar('telp'),
        ];

        // $supplier->fill($data);
        // setEmail($email);
        // getName();
        $this->distributorModel->save($distributor);

        session()->setFlashdata("msg", "Data berhasil ditambahkan!");
        return redirect()->to('/distributor');
    }

    public function edit($id)
    {
        $dataDistributor = $this->distributorModel->where(['distributor_id' => $id])->first();
        // Jika data kosong
        if (empty($dataDistributor)) {
            throw new \CodeIgniter\Exceptions\PageNotFoundException("Distributor dengan ID: $id tidak ditemukan!");
        }

        $data = [
            'title' => 'Ubah Distributor',
            // 'category' => $this->catModel->findAll(),
            // 'validation' => \Config\Services::validation(),
            'result' => $dataDistributor
        ];

        return view('distributor/edit', $data);
    }

    public function update($id)
    {
        $distributor = new DistributorEntity();
        $data = [    
            "distributor_id" => $id,
            "name" => $this->request->getVar('nama'),
            "address" => $this->request->getVar('alamat'),
            "email" => $this->request->getVar('email'),
            "phone" => $this->request->getVar('telp'),
        ];

        $distributor->fill($data);
        $this->distributorModel->save($distributor);

        session()->setFlashdata("msg", "Data berhasil diperbarui!");
        return redirect()->to('/distributor');
    }

    public function delete($id)
    {
        $this->distributorModel->delete($id);
        session()->setFlashdata("msg", "Data berhasil dihapus!");
        return redirect()->to('/distributor');
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
