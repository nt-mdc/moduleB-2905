<?php

namespace App\Http\Controllers;

use App\Models\Company;
use App\Models\Product;
use Illuminate\Http\Request;
use Illuminate\Validation\Rule;

class ProductController extends Controller
{
    public function index()
    {
        return view('products')->with('prods', Product::all()->load('detail', 'translations'));
    }

    public function newIndex()
    {
        return view('products-new')->with('comp', Company::all());
    }

    public function edit(Product $gtin)
    {
        return view('products-view')->with(['comp' => Company::all(), 'prod' => $gtin->load('translations','detail','weight','image')]);
    }

    public function product(Request $request, $gtin = null) {
        $request->validate([
            'gtin' => ['required', 'min:13', 'max:14', Rule::unique('products', 'gtin')->ignore($gtin, 'gtin')],
        ]);

        $prod = Product::updateOrCreate(['gtin' => $gtin], $request->only('gtin', 'hidden', 'company_id'));
        $prod->detail()->updateOrCreate([], $request->only('brand', 'country'));
        $prod->weight()->updateOrCreate([], $request->only('unit', 'gross', 'net'));
        $prod->translations()->updateOrCreate(['language' => 'en'], [
            'language' => 'en',
            'name' => $request->en_name,
            'description' => $request->en_desc
        ]);
        $prod->translations()->updateOrCreate(['language' => 'fr'], [
            'language' => 'fr',
            'name' => $request->en_name,
            'description' => $request->en_desc
        ]);

        $prod->image()->updateOrCreate([], [
            'path' => $request->file('image')?->store('products', 'public') ?? $product->image?->path ?? 'placeholder.jpg'
        ]);
        
        return redirect()->back();
    }
}
