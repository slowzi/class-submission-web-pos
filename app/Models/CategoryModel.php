<?php

namespace App\Models;

use CodeIgniter\Model;

class CategoryModel extends Model
{
    //Nama table
    protected $table = "book_category";
    //Atribut yang digunakan menjadi primary key
    protected $primaryKey = "book_category_id";
    
    public function getBook($slug = false)
    {
        $query = $this->table('book')
             ->join('book_category', 'book_category_id');
        
        if ($slug == false)
            return $query->get()->getResultArray();
        return $query->where(['slug' => $slug])->first();
    }
}
