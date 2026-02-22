<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('affiliates', function (Blueprint $table) {
            if (!Schema::hasColumn('affiliates', 'payout_method')) {
                $table->string('payout_method')->nullable()->after('bank_account_number');
            }
            if (!Schema::hasColumn('affiliates', 'payout_account_name')) {
                $table->string('payout_account_name')->nullable()->after('payout_method');
            }
        });
    }

    public function down(): void
    {
        Schema::table('affiliates', function (Blueprint $table) {
            $table->dropColumn(['payout_method', 'payout_account_name']);
        });
    }
};
