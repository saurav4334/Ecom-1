<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('affiliates', function (Blueprint $table) {
            if (!Schema::hasColumn('affiliates', 'link_hits')) {
                $table->unsignedInteger('link_hits')->default(0)->after('payout_account_name');
            }
            if (!Schema::hasColumn('affiliates', 'link_purchases')) {
                $table->unsignedInteger('link_purchases')->default(0)->after('link_hits');
            }
        });
    }

    public function down(): void
    {
        Schema::table('affiliates', function (Blueprint $table) {
            $table->dropColumn(['link_hits', 'link_purchases']);
        });
    }
};
