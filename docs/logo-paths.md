# Likely Logo-Related Files and Paths

Based on the existing schema/data and this logo fix implementation, logo handling is expected in these places:

- Admin settings controller:
  - `app/Http/Controllers/Admin/BrandingController.php`
- Validation request:
  - `app/Http/Requests/Admin/UpdateBrandingRequest.php`
- Admin branding form page:
  - `resources/views/admin/settings/branding.blade.php`
- Routes:
  - `routes/web.php` (`admin/settings/branding` edit/update)
- Filesystem/storage config:
  - `config/filesystems.php`
  - `.env` (`FILESYSTEM_DISK=public`)
- Database table/columns:
  - `general_settings.white_logo`
  - `general_settings.dark_logo`
  - `general_settings.favicon`
  - migration: `database/migrations/2026_02_10_000000_create_general_settings_table.php`
- Upload storage path:
  - disk: `public`
  - directory: `storage/app/public/uploads/settings`
  - public URL base via symlink: `public/storage` and `Storage::url(...)`

Existing SQL snapshot also indicates legacy persisted paths like `public/uploads/settings/...` in `creativedesignbd_ecommerce1.sql`. The updated code now stores relative paths on the `public` disk (for example `uploads/settings/file.webp`) so `Storage::url(...)` resolves consistently.
