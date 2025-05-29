<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    /**
     * Run the migrations.
     */
    public function up(): void
    {
        Schema::create('products', function (Blueprint $table) {
            $table->string('gtin')->primary();
            $table->boolean('hidden');
            $table->foreignId('company_id')->constrained()->onDelete('cascade');
        });

        Schema::create('product_translations', function (Blueprint $table) {
            $table->id();
            $table->string('language');
            $table->string('name');
            $table->longText('description');
            $table->string('product_gtin');
            $table->foreign('product_gtin')->references('gtin')->on('products')->onDelete('cascade');
        });

        Schema::create('product_detail', function (Blueprint $table) {
            $table->id();
            $table->string('brand');
            $table->string('country');
            $table->string('product_gtin');
            $table->foreign('product_gtin')->references('gtin')->on('products')->onDelete('cascade');
        });

        Schema::create('product_weight', function (Blueprint $table) {
            $table->id();
            $table->string('gross');
            $table->string('net');
            $table->string('unit');
            $table->string('product_gtin');
            $table->foreign('product_gtin')->references('gtin')->on('products')->onDelete('cascade');
        });

        Schema::create('product_image', function (Blueprint $table) {
            $table->id();
            $table->string('path');
            $table->string('product_gtin');
            $table->foreign('product_gtin')->references('gtin')->on('products')->onDelete('cascade');
        });
    }

    /**
     * Reverse the migrations.
     */
    public function down(): void
    {
        Schema::dropIfExists('products');
        Schema::dropIfExists('product_detail');
        Schema::dropIfExists('product_translations');
        Schema::dropIfExists('product_weight');
        Schema::dropIfExists('product_image');
    }
};
