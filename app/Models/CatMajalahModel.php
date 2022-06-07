<?php

namespace App\Models;

use CodeIgniter\Model;

class CatMajalahModel extends Model
{
    //Nama table
    protected $table = "majalah_category";
    //Atribut yang digunakan menjadi primary key
    protected $primaryKey = "majalah_category_id";
    
    public function getMajalah($slug = false)
    {
        $query = $this->table('majalah')
             ->join('majalah_category', 'majalah_category_id');
        
        if ($slug == false)
            return $query->get()->getResultArray();
        return $query->where(['slug' => $slug])->first();
    }
}
