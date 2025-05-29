<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductWeight extends Model
{
    public $timestamps = false;
    protected $table = 'product_weight';
    protected $fillable = [
        'gross',
        'net',
        'unit',
        'product_gtin'
    ];

    public function product()
    {
        return $this->belongsTo(Product::class, 'gtin', 'product_gtin');
    }
}
