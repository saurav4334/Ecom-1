<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('referrals', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('affiliate_id');
            $table->unsignedInteger('order_id');
            $table->decimal('commission_amount', 10, 2)->default(0);
            $table->string('status')->default('pending');
            $table->timestamps();

            $table->index('affiliate_id');
            $table->index('order_id');
            $table->unique(['affiliate_id', 'order_id']);
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('referrals');
    }
};
