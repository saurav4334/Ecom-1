<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('affiliates', function (Blueprint $table) {
            if (!Schema::hasColumn('affiliates', 'phone')) {
                $table->string('phone')->nullable()->after('user_id');
            }
            if (!Schema::hasColumn('affiliates', 'nid_number')) {
                $table->string('nid_number')->nullable()->after('phone');
            }
            if (!Schema::hasColumn('affiliates', 'email')) {
                $table->string('email')->nullable()->after('nid_number');
            }
            if (!Schema::hasColumn('affiliates', 'address')) {
                $table->string('address')->nullable()->after('email');
            }
            if (!Schema::hasColumn('affiliates', 'bank_account_number')) {
                $table->string('bank_account_number')->nullable()->after('address');
            }
        });
    }

    public function down(): void
    {
        Schema::table('affiliates', function (Blueprint $table) {
            $table->dropColumn(['phone', 'nid_number', 'email', 'address', 'bank_account_number']);
        });
    }
};
