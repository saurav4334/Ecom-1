<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Models\AffiliateFormSetting;
use Illuminate\Http\Request;

class AffiliateFormSettingController extends Controller
{
    public function edit()
    {
        $setting = AffiliateFormSetting::first();
        if (!$setting) {
            $setting = AffiliateFormSetting::create([
                'fields' => $this->defaultFields(),
                'status' => 'active',
            ]);
        }

        return view('backEnd.affiliate.form_settings', compact('setting'));
    }

    public function update(Request $request)
    {
        $setting = AffiliateFormSetting::first();
        if (!$setting) {
            $setting = AffiliateFormSetting::create([
                'fields' => $this->defaultFields(),
                'status' => 'active',
            ]);
        }

        $fields = $this->defaultFields();
        foreach ($fields as $key => $field) {
            $fields[$key]['enabled'] = $request->boolean("fields.$key.enabled");
            $fields[$key]['required'] = $request->boolean("fields.$key.required");
            $fields[$key]['label'] = $request->input("fields.$key.label", $field['label']);
        }

        $setting->update([
            'fields' => $fields,
            'status' => $request->input('status', 'active'),
        ]);

        return redirect()->back()->with('success', 'Affiliate form settings updated.');
    }

    private function defaultFields(): array
    {
        return [
            'name' => ['label' => 'Name', 'enabled' => true, 'required' => true],
            'phone' => ['label' => 'Phone', 'enabled' => true, 'required' => true],
            'nid_number' => ['label' => 'NID Number', 'enabled' => true, 'required' => false],
            'email' => ['label' => 'Email', 'enabled' => true, 'required' => true],
            'address' => ['label' => 'Address', 'enabled' => true, 'required' => false],
            'bank_account_number' => ['label' => 'Bank Account Number', 'enabled' => true, 'required' => false],
        ];
    }
}
