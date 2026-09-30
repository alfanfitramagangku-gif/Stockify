<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class Product extends Model
{
    use HasFactory;
    protected $fillable = [
    'category_id',
    'name',
    'sku',
    'size',
    'color',
    'image',
    'description',
    'purchase_price',
    'selling_price',
    'stock',
    'minimum_stock',
];

    /**
     * Relasi produk dengan kategori.
     */
    public function category()
    {
        return $this->belongsTo(Category::class);
    }

    public function stockIns()
    {
        return $this->hasMany(StockIn::class);
    }
}