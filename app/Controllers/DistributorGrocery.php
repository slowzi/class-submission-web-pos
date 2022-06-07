<?php

namespace App\Controllers;
use App\Libraries\GroceryCrud;
// use \App\Models\DistributorModel;
// use App\Entities\DistributorEntity;

class DistributorGrocery extends BaseController
{
    public function index()
    {
        $crud = new GroceryCrud();
        $crud->setTable('distributor');
        
        // Set bahasa
        $crud->setLanguage('Indonesian');
        // Tampil dan Ubah Kolom
        $crud->columns(['name', 'address', 'email', 'phone']);
        $crud->unsetColumns(['created_at', 'updated_at']);
        $crud->displayAs(array(
            'name' => 'Nama',
            'address' => 'Alamat',
            'email' => 'Email',
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
        // $crud->unsetEdit();
        // $crud->unsetDelete();
        // $crud->unsetExport();
        // $crud->unsetPrint();
        // Relasi table
        // $crud->setRelation('officeCode', 'offices', 'city');
        // Set Tema
        // $crud->setTheme('datatables');
        
        
        $output = $crud->render();
        
        $data =[
            'title' => 'Data distributor',
            'result' => $output
        ];

        return view('distributor/index', $data);
    }
}
