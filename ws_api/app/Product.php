<?php

namespace App;

use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    
    public $fillable = [
        'name',
        'categoryId',
        'price',
        'description',
        'image'
       ];

    public function category(){
        return $this->belongsTo('App\Category', 'categoryId');
    }

    public function orderDetail(){
        return $this->hasMany('App\OrderDetail', 'id');
    }

}
