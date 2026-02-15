<?php

namespace App\Http\Controllers\Admin;

use App\Http\Controllers\Controller;
use App\Http\Requests\Admin\UpdateBrandingRequest;
use App\Models\GeneralSetting;
use Illuminate\Http\RedirectResponse;
use Illuminate\Support\Facades\Storage;
use Illuminate\View\View;

class BrandingController extends Controller
{
    public function edit(): View
    {
        $settings = GeneralSetting::query()->firstOrCreate(['id' => 1], ['name' => config('app.name')]);

        return view('admin.settings.branding', compact('settings'));
    }

    public function update(UpdateBrandingRequest $request): RedirectResponse
    {
        $settings = GeneralSetting::query()->firstOrCreate(['id' => 1], ['name' => config('app.name')]);

        foreach (['white_logo', 'dark_logo', 'favicon'] as $field) {
            if (! $request->hasFile($field)) {
                continue;
            }

            $newPath = $request->file($field)->store('uploads/settings', 'public');

            if ($settings->{$field}) {
                $oldPath = ltrim(str_replace('storage/', '', $settings->{$field}), '/');
                if ($oldPath !== $newPath && Storage::disk('public')->exists($oldPath)) {
                    Storage::disk('public')->delete($oldPath);
                }
            }

            // keep DB paths consistent with Storage::url() output.
            $settings->{$field} = $newPath;
        }

        $settings->save();

        return back()->with('status', 'Brand assets updated successfully.');
    }
}
