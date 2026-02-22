<?php
$path = __DIR__ . '/../resources/views/frontEnd/layouts/pages/campaign/campaign.blade.php';
$content = file_get_contents($path);
$lines = preg_split('/\r\n|\n|\r/', $content);
$changed = 0;
foreach ($lines as $i => $line) {
    if (!preg_match('/à¦|à§|â€|âœ|â|ðŸ|Ã|Â/u', $line)) {
        continue;
    }
    $converted = iconv('UTF-8', 'Windows-1252//IGNORE', $line);
    if ($converted !== false && $converted !== '' && $converted !== $line) {
        $lines[$i] = $converted;
        $changed++;
    }
}
file_put_contents($path, implode("\n", $lines));
echo "changed={$changed}\n";
?>
