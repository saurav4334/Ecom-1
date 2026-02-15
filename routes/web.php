<?php

use App\Http\Controllers\Admin\BrandingController;
use Illuminate\Support\Facades\Route;

Route::prefix('admin/settings')->name('admin.settings.')->group(function (): void {
    Route::get('branding', [BrandingController::class, 'edit'])->name('branding.edit');
    Route::put('branding', [BrandingController::class, 'update'])->name('branding.update');
});
