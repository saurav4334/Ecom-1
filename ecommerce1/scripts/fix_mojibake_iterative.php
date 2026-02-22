<?php
$base = __DIR__ . '/../resources/views';
$it = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($base));
$markerPattern = '/à¦|à§|â€|âœ|â|ðŸ|Ã|Â/u';
$updatedFiles = 0;
$updatedLines = 0;

function recoverLine(string $line): string {
    $current = $line;
    for ($i = 0; $i < 4; $i++) {
        $next = iconv('UTF-8', 'Windows-1252//IGNORE', $current);
        if ($next === false || $next === '' || $next === $current) {
            break;
        }
        $current = $next;
    }
    return $current;
}

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
    $lineEnding = strpos($content, "\r\n") !== false ? "\r\n" : "\n";
    $changed = false;

    foreach ($lines as $i => $line) {
        if (!preg_match($markerPattern, $line)) {
            continue;
        }

        $recovered = recoverLine($line);
        if ($recovered !== $line) {
            $lines[$i] = $recovered;
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
