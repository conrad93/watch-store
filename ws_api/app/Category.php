<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Category extends Model
{

    public $fillable = [
        'title',
        'description'
       ];
    
    public function product(){
        return $this->hasMany('App\Product', 'id');
    }

}
