<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('invoice_settings', function (Blueprint $table) {
            $table->id();
            $table->string('layout')->default('classic');
            $table->string('header_bg_color')->default('#4DBC60');
            $table->string('accent_color')->default('#4DBC60');
            $table->string('text_color')->default('#222222');
            $table->boolean('show_logo')->default(true);
            $table->boolean('show_company_info')->default(true);
            $table->boolean('show_customer_info')->default(true);
            $table->boolean('show_payment_info')->default(true);
            $table->boolean('show_order_note')->default(true);
            $table->boolean('show_terms')->default(true);
            $table->text('terms_text')->nullable();
            $table->boolean('show_barcode')->default(false);
            $table->boolean('show_qr')->default(false);
            $table->string('barcode_value_source')->default('invoice_id');
            $table->string('qr_value_source')->default('invoice_url');
            $table->text('custom_footer_text')->nullable();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('invoice_settings');
    }
};
