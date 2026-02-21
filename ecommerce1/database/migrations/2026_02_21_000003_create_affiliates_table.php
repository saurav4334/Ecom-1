<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::create('affiliates', function (Blueprint $table) {
            $table->increments('id');
            $table->unsignedInteger('user_id');
            $table->string('referral_code')->unique();
            $table->decimal('commission_rate', 5, 2)->default(5.00);
            $table->decimal('balance', 10, 2)->default(0);
            $table->string('status')->default('active');
            $table->timestamps();

            $table->index('user_id');
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('affiliates');
    }
};
