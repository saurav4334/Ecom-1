<?php

$base = __DIR__ . '/../resources/views';
$it = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($base));

$markerPattern = '/à¦|à§|â€|âœ|â|ðŸ|Ã|Â/u';
$banglaPattern = '/[\x{0980}-\x{09FF}]/u';
$updatedFiles = 0;
$updatedLines = 0;

foreach ($it as $file) {
    if ($file->isDir() || $file->getExtension() !== 'php') {
        continue;
    }

    $path = $file->getPathname();
    $content = file_get_contents($path);
    if ($content === false || !preg_match($markerPattern, $content)) {
        continue;
    }

    $lines = preg_split('/\r\n|\n|\r/', $content);
    $lineEnding = "\n";
    if (strpos($content, "\r\n") !== false) {
        $lineEnding = "\r\n";
    }

    $changed = false;
    foreach ($lines as $i => $line) {
        if (!preg_match($markerPattern, $line)) {
            continue;
        }

        // Avoid damaging lines that already contain valid Bangla text.
        if (preg_match($banglaPattern, $line)) {
            continue;
        }

        $converted = iconv('UTF-8', 'Windows-1252//IGNORE', $line);
        if ($converted === false || $converted === '') {
            continue;
        }

        if ($converted !== $line) {
            $lines[$i] = $converted;
            $changed = true;
            $updatedLines++;
        }
    }

    if ($changed) {
        file_put_contents($path, implode($lineEnding, $lines));
        $updatedFiles++;
    }
}

echo "UPDATED_FILES={$updatedFiles}\n";
echo "UPDATED_LINES={$updatedLines}\n";
