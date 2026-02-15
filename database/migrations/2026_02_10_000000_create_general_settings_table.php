<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration {
    public function up(): void
    {
        Schema::create('general_settings', function (Blueprint $table): void {
            $table->id();
            $table->string('name')->nullable();
            $table->string('white_logo')->nullable();
            $table->string('dark_logo')->nullable();
            $table->string('favicon')->nullable();
            $table->timestamps();
        });
    }

    public function down(): void
    {
        Schema::dropIfExists('general_settings');
    }
};
