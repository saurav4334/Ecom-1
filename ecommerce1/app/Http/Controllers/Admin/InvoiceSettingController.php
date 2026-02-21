<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\InvoiceSetting;
use Illuminate\Http\Request;
use Toastr;

class InvoiceSettingController extends Controller
{
    public function edit()
    {
        $setting = InvoiceSetting::firstOrCreate([], [
            'layout' => 'classic',
            'header_bg_color' => '#4DBC60',
            'accent_color' => '#4DBC60',
            'text_color' => '#222222',
            'show_logo' => true,
            'show_company_info' => true,
            'show_customer_info' => true,
            'show_payment_info' => true,
            'show_order_note' => true,
            'show_terms' => true,
            'terms_text' => 'This is a computer generated invoice, does not require any signature.',
            'show_barcode' => false,
            'show_qr' => false,
            'barcode_value_source' => 'invoice_id',
            'qr_value_source' => 'invoice_url',
            'custom_footer_text' => null,
        ]);

        return view('backEnd.settings.invoice_design', compact('setting'));
    }

    public function update(Request $request)
    {
        $validated = $request->validate([
            'layout' => 'required|in:classic,modern,minimal',
            'header_bg_color' => 'required|string|max:20',
            'accent_color' => 'required|string|max:20',
            'text_color' => 'required|string|max:20',
            'terms_text' => 'nullable|string',
            'custom_footer_text' => 'nullable|string',
            'barcode_value_source' => 'required|in:invoice_id,order_id,transaction_id',
            'qr_value_source' => 'required|in:invoice_url,invoice_id,customer_phone',
        ]);

        $setting = InvoiceSetting::firstOrCreate([]);

        $setting->fill($validated);
        $setting->show_logo = $request->boolean('show_logo');
        $setting->show_company_info = $request->boolean('show_company_info');
        $setting->show_customer_info = $request->boolean('show_customer_info');
        $setting->show_payment_info = $request->boolean('show_payment_info');
        $setting->show_order_note = $request->boolean('show_order_note');
        $setting->show_terms = $request->boolean('show_terms');
        $setting->show_barcode = $request->boolean('show_barcode');
        $setting->show_qr = $request->boolean('show_qr');
        $setting->save();

        Toastr::success('Success', 'Invoice design updated successfully');
        return back();
    }
}
