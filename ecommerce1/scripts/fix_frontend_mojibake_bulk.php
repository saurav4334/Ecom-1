<?php
$base = __DIR__ . '/../resources/views/frontEnd';
$it = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($base));
$marker = '/à¦|à§|Ã|Â|âœ|â|ðŸ|ï¿½|Â©|Ã¢/u';
$bangla = '/[\x{0980}-\x{09FF}]/u';
$updatedFiles = 0;
$updatedLines = 0;

foreach ($it as $file) {
    if ($file->isDir() || $file->getExtension() !== 'php') {
        continue;
    }

    $path = $file->getPathname();
    $content = file_get_contents($path);
    if ($content === false || !preg_match($marker, $content)) {
        continue;
    }

    $lineEnding = "\n";
    if (strpos($content, "\r\n") !== false) {
        $lineEnding = "\r\n";
    }
    $lines = preg_split('/\r\n|\n|\r/', $content);
    $changed = false;

    foreach ($lines as $i => $line) {
        if (!preg_match($marker, $line)) {
            continue;
        }

        $current = $line;
        $currentMarkerCount = preg_match_all($marker, $current);

        for ($n = 0; $n < 3; $n++) {
            $decoded = iconv('UTF-8', 'Windows-1252//IGNORE', $current);
            if ($decoded === false || $decoded === '' || $decoded === $current) {
                break;
            }

            $decodedMarkerCount = preg_match_all($marker, $decoded);
            $decodedHasBangla = preg_match($bangla, $decoded) === 1;

            if ($decodedHasBangla || $decodedMarkerCount < $currentMarkerCount) {
                $current = $decoded;
                $currentMarkerCount = $decodedMarkerCount;
            } else {
                break;
            }
        }

        if ($current !== $line) {
            $lines[$i] = $current;
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
