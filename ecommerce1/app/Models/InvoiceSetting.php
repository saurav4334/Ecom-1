<?php

namespace App\Models;

use Illuminate\Database\Eloquent\Factories\HasFactory;
use Illuminate\Database\Eloquent\Model;

class InvoiceSetting extends Model
{
    use HasFactory;

    protected $fillable = [
        'layout',
        'header_bg_color',
        'accent_color',
        'text_color',
        'show_logo',
        'show_company_info',
        'show_customer_info',
        'show_payment_info',
        'show_order_note',
        'show_terms',
        'terms_text',
        'show_barcode',
        'show_qr',
        'barcode_value_source',
        'qr_value_source',
        'custom_footer_text',
    ];

    protected $casts = [
        'show_logo' => 'boolean',
        'show_company_info' => 'boolean',
        'show_customer_info' => 'boolean',
        'show_payment_info' => 'boolean',
        'show_order_note' => 'boolean',
        'show_terms' => 'boolean',
        'show_barcode' => 'boolean',
        'show_qr' => 'boolean',
    ];
}
