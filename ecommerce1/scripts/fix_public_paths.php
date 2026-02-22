<?php

require __DIR__ . '/../vendor/autoload.php';

$app = require __DIR__ . '/../bootstrap/app.php';
$kernel = $app->make(Illuminate\Contracts\Console\Kernel::class);
$kernel->bootstrap();

$database = Illuminate\Support\Facades\DB::getDatabaseName();
$columns = Illuminate\Support\Facades\DB::select(
    "SELECT TABLE_NAME, COLUMN_NAME
     FROM INFORMATION_SCHEMA.COLUMNS
     WHERE TABLE_SCHEMA = ?
       AND DATA_TYPE IN ('varchar','text','mediumtext','longtext','char')",
    [$database]
);

$totalUpdates = 0;
foreach ($columns as $col) {
    $table = $col->TABLE_NAME;
    $column = $col->COLUMN_NAME;

    $sql = "UPDATE `{$table}` SET `{$column}` = REPLACE(`{$column}`, 'public/', '') WHERE `{$column}` LIKE 'public/%'";
    try {
        $affected = Illuminate\Support\Facades\DB::update($sql);
        if ($affected > 0) {
            $totalUpdates += $affected;
            echo "Updated {$table}.{$column}: {$affected}\n";
        }
    } catch (Throwable $e) {
        // Skip non-updatable or problematic columns.
    }
}

echo "TOTAL_UPDATED_ROWS={$totalUpdates}\n";
