<?php

namespace App\Controllers;
use App\Libraries\GroceryCrud;

// use \App\Models\CustomerModel;
// use App\Entities\CustomerEntity;

class Customer extends BaseController
{

    public function index()
    {
        $crud = new GroceryCrud();
        $crud->setTable('customer');
        
        // Set bahasa
        $crud->setLanguage('Indonesian');
        // Tampil dan Ubah Kolom
        $crud->columns(['name', 'gender', 'email', 'address', 'phone']);
        $crud->unsetColumns(['created_at', 'updated_at']);
        $crud->displayAs(array(
            'name' => 'Nama',
            'gender' => 'L/P',
            'address' => 'Alamat',
            'phone' => 'Telp'
        ));
        // Filter data
        // $crud->where('deleted_at', null);
        
        // Set form
        $crud->unsetAddFields(['created_at', 'updated_at']);
        $crud->unsetEditFields(['created_at', 'updated_at']);
        // Form validation
        $crud->setRule('name', 'Nama', 'required', [
            'required' => '{field} harus diisi!'
        ]);
        // Set Button CRUD
        // $crud->unsetAdd();
        // // $crud->unsetEdit();
        // // $crud->unsetDelete();
        // $crud->unsetExport();
        // $crud->unsetPrint();
        // Relasi table
        // $crud->setRelation('officeCode', 'offices', 'city');
        // Set Tema
        $crud->setTheme('datatables');
        
        
        $output = $crud->render();
        
        $data =[
            'title' => 'Data Customer',
            'result' => $output
        ];

        return view('customer/index', $data);
    }

    // private $customerModel;
    // public function __construct()
    // {
    //     $this->customerModel = new CustomerModel();
    // }

    // public function index()
    // {
    //     $dataCustomer = $this->customerModel->findAll();
    //     $data =[
    //         'title' => 'Data Customer',
    //         'result' => $dataCustomer
    //     ];

    //     return view('customer/list', $data);
    // }

    // public function create()
    // {
    //     // session();
    //     $data = [
    //         'title' => 'Tambah Customer'
    //         // 'category' => $this->catModel->findAll(),
    //         // 'validation' => \Config\Services::validation()
            
    //     ];
    //     return view('customer/create', $data);
    // }

    // public function save()
    // {
    //     $customer = new CustomerEntity();
    //     $data = [    
    //         $customer -> name = $this->request->getVar('nama'),
    //         $customer -> address = $this->request->getVar('alamat'),
    //         $customer -> no_customer = $this->request->getVar('no'),
    //         $customer -> gender = $this->request->getVar('jenis'),
    //         $customer -> email = $this->request->getVar('email'),
    //         $customer -> phone = $this->request->getVar('telp'),
    //     ];

    //     // $supplier->fill($data);
    //     // setEmail($email);
    //     // getName();
    //     $this->customerModel->save($customer);

    //     session()->setFlashdata("msg", "Data berhasil ditambahkan!");
    //     return redirect()->to('/customer');
    // }

    // public function edit($id)
    // {
    //     $dataCustomer = $this->customerModel->where(['customer_id' => $id])->first();
    //     // Jika data kosong
    //     if (empty($dataCustomer)) {
    //         throw new \CodeIgniter\Exceptions\PageNotFoundException("Customer dengan ID: $id tidak ditemukan!");
    //     }

    //     $data = [
    //         'title' => 'Ubah Customer',
    //         // 'category' => $this->catModel->findAll(),
    //         // 'validation' => \Config\Services::validation(),
    //         'result' => $dataCustomer
    //     ];

    //     return view('customer/edit', $data);
    // }

    // public function update($id)
    // {
    //     $customer = new CustomerEntity();
    //     $data = [    
    //         "customer_id" => $id,
    //         "name" => $this->request->getVar('nama'),
    //         "address" => $this->request->getVar('alamat'),
    //         "no_customer" => $this->request->getVar('no'),
    //         "gender" => $this->request->getVar('jenis'),
    //         "email" => $this->request->getVar('email'),
    //         "phone" => $this->request->getVar('telp'),
    //     ];

    //     $customer->fill($data);
    //     $this->customerModel->save($customer);

    //     session()->setFlashdata("msg", "Data berhasil diperbarui!");
    //     return redirect()->to('/customer');
    // }

    // public function delete($id)
    // {
    //     $this->customerModel->delete($id);
    //     session()->setFlashdata("msg", "Data berhasil dihapus!");
    //     return redirect()->to('/customer');
    // }

    // public function setEmail(string $email)
    // {
    //     $this->attributes["email"] = strtolower($email);
    //     return $this;
    // }

    // public function getName()
    // {
    //     return strtoupper($this->attributes['name']);
    // }
}
