<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Model;

class Company extends Model
{
    public $timestamps = false;
    protected $table = 'companies';
    protected $fillable = [
        'company_name',
        'company_address',
        'company_email',
        'company_number',
        'deactiv'
    ];

    public function owner()
    {
        return $this->hasOne(Owner::class);
    }


    public function contact()
    {
        return $this->hasOne(Contact::class);
    }

    public function products()
    {
        return $this->hasMany(Product::class, 'company_id', 'id');
    }
}
