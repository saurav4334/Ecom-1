<?php

namespace App\Http\Controllers\Frontend;

use App\Http\Controllers\Controller;
use App\Models\AffiliateApplication;
use App\Models\AffiliateFormSetting;
use App\Models\User;
use Illuminate\Http\Request;
use Illuminate\Support\Facades\Auth;
use Illuminate\Support\Facades\Hash;

class AffiliateRegistrationController extends Controller
{
    public function create()
    {
        $setting = AffiliateFormSetting::first();
        if (!$setting) {
            $setting = AffiliateFormSetting::create([
                'fields' => [
                    'name' => ['label' => 'Name', 'enabled' => true, 'required' => true],
                    'phone' => ['label' => 'Phone', 'enabled' => true, 'required' => true],
                    'nid_number' => ['label' => 'NID Number', 'enabled' => true, 'required' => false],
                    'email' => ['label' => 'Email', 'enabled' => true, 'required' => true],
                    'address' => ['label' => 'Address', 'enabled' => true, 'required' => false],
                    'bank_account_number' => ['label' => 'Bank Account Number', 'enabled' => true, 'required' => false],
                ],
                'status' => 'active',
            ]);
        }

        if ($setting->status !== 'active') {
            return view('frontEnd.layouts.pages.affiliate_register_closed');
        }

        return view('frontEnd.layouts.pages.affiliate_register', compact('setting'));
    }

    public function store(Request $request)
    {
        $setting = AffiliateFormSetting::first();
        $fields = $setting?->fields ?? [];

        $rules = [
            'password' => 'required|string|min:6|confirmed',
        ];

        foreach ($fields as $key => $field) {
            if (!($field['enabled'] ?? false)) {
                continue;
            }
            $rules[$key] = ($field['required'] ?? false) ? 'required' : 'nullable';
            if ($key === 'email') {
                $rules[$key] = ($field['required'] ?? false) ? 'required|email' : 'nullable|email';
            }
        }

        $rules['email'] = ($rules['email'] ?? 'required|email')
            . '|unique:affiliate_applications,email|unique:users,email';

        $data = $request->validate($rules);

        AffiliateApplication::create([
            'name' => $data['name'] ?? '',
            'phone' => $data['phone'] ?? null,
            'nid_number' => $data['nid_number'] ?? null,
            'email' => $data['email'] ?? '',
            'address' => $data['address'] ?? null,
            'bank_account_number' => $data['bank_account_number'] ?? null,
            'password' => Hash::make($data['password']),
            'status' => 'pending',
        ]);

        return redirect()->back()->with('success', 'Your affiliate application is submitted and pending approval.');
    }

    public function autoLogin(Request $request)
    {
        $userId = (int) $request->query('user');
        $user = User::find($userId);
        if (!$user) {
            return redirect('/login')->withErrors(['email' => 'Invalid login link.']);
        }

        Auth::login($user);

        return redirect()->route('admin.affiliate.dashboard');
    }
}
