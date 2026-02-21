<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('affiliates', function (Blueprint $table) {
            if (!Schema::hasColumn('affiliates', 'commission_type')) {
                $table->string('commission_type')->default('percent')->after('commission_rate');
            }
            if (!Schema::hasColumn('affiliates', 'commission_value')) {
                $table->decimal('commission_value', 10, 2)->default(5.00)->after('commission_type');
            }
        });
    }

    public function down(): void
    {
        Schema::table('affiliates', function (Blueprint $table) {
            if (Schema::hasColumn('affiliates', 'commission_value')) {
                $table->dropColumn('commission_value');
            }
            if (Schema::hasColumn('affiliates', 'commission_type')) {
                $table->dropColumn('commission_type');
            }
        });
    }
};
