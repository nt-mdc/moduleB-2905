<?php

use App\Http\Controllers\CompanyController;
use App\Http\Controllers\ProductController;
use App\Http\Controllers\ProfileController;
use App\Http\Middleware\Admin;
use Illuminate\Support\Facades\Route;

Route::get('/', function () {
    return redirect()->route('home');
});

Route::prefix('rj_module_b')->group(function () {
    require __DIR__ . '/auth.php';

    Route::middleware(Admin::class)->group(function () {

        Route::get('/company', [CompanyController::class, 'index'])->name('home');

        Route::get('/company/{id}', [CompanyController::class, 'edit'])->name('company.edit');

        Route::post('/company/{id?}', [CompanyController::class, 'company'])->name('company');

        Route::get('/product', [ProductController::class, 'index'])->name('product');
        Route::get('/product/new', [ProductController::class, 'newIndex'])->name('product.new');
        Route::post('/product/new', [ProductController::class, 'product']);
        Route::get('/product/image', [ProductController::class, 'imageDel'])->name('product.img');
        Route::get('/product/delete', [ProductController::class, 'delete'])->name('product.del');
        Route::get('/product/{gtin}', [ProductController::class, 'edit'])->name('product.edit');
        Route::post('/product/{gtin?}', [ProductController::class, 'product']);

        Route::get('/home', [CompanyController::class, 'index'])->name('home');
        Route::get('/home', [CompanyController::class, 'index'])->name('home');
    });
});
