<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductImage extends Model
{
    public $timestamps = false;
    protected $table = 'product_image';
    protected $fillable = [
        'path',
        'product_gtin'
    ];

    public function product()
    {
        return $this->belongsTo(Product::class, 'gtin', 'product_gtin');
    }
}
