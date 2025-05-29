<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class ProductTranslations extends Model
{
    public $timestamps = false;
    protected $table = 'product_translations';
    protected $fillable = [
        'language',
        'name',
        'description',
        'product_gtin'
    ];

    public function product()
    {
        return $this->belongsTo(Product::class, 'gtin', 'product_gtin');
    }
}
