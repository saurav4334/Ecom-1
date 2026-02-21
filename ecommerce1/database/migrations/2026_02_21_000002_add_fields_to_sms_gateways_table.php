<?php

use Illuminate\Database\Migrations\Migration;
use Illuminate\Database\Schema\Blueprint;
use Illuminate\Support\Facades\Schema;

return new class extends Migration
{
    public function up(): void
    {
        Schema::table('sms_gateways', function (Blueprint $table) {
            if (!Schema::hasColumn('sms_gateways', 'gateway_name')) {
                $table->string('gateway_name')->nullable()->after('id');
            }
            if (!Schema::hasColumn('sms_gateways', 'message_type')) {
                $table->string('message_type')->nullable()->after('api_key');
            }
            if (!Schema::hasColumn('sms_gateways', 'label')) {
                $table->string('label')->nullable()->after('message_type');
            }
        });
    }

    public function down(): void
    {
        Schema::table('sms_gateways', function (Blueprint $table) {
            if (Schema::hasColumn('sms_gateways', 'gateway_name')) {
                $table->dropColumn('gateway_name');
            }
            if (Schema::hasColumn('sms_gateways', 'message_type')) {
                $table->dropColumn('message_type');
            }
            if (Schema::hasColumn('sms_gateways', 'label')) {
                $table->dropColumn('label');
            }
        });
    }
};
