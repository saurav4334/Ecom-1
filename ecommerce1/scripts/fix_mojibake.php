<?php
$dir = __DIR__ . '/../resources/views/frontEnd';
$it = new RecursiveIteratorIterator(new RecursiveDirectoryIterator($dir));
$replacements = [
    'à¦¸à¦°à§à¦¬à¦®à§‹à¦Ÿ' => 'সর্বমোট',
    'à¦•à§à¦¯à¦¾à¦Ÿà¦¾à¦—à¦°à¦¿' => 'ক্যাটাগরি',
    'à¦•à§à¦ªà¦¨' => 'কুপন',
    'à¦›à¦¾à§œ' => 'ছাড়',
    'à¦¡à§‡à¦²à¦¿à¦­à¦¾à¦°à¦¿' => 'ডেলিভারি',
    'à¦®à§‹à¦Ÿ' => 'মোট',
    'à¦ªà§à¦°à§‹à¦¡à¦¾à¦•à§à¦Ÿ' => 'প্রোডাক্ট',
    'à¦ªà¦°à¦¿à¦®à¦¾à¦£' => 'পরিমাণ',
    'à¦®à§‚à¦²à§à¦¯' => 'মূল্য',
    'à¦…à¦°à§à¦¡à¦¾à¦° à¦•à¦°à§à¦¨' => 'অর্ডার করুন',
];
$count = 0;
foreach ($it as $file) {
    if ($file->isDir() || $file->getExtension() !== 'php') {
        continue;
    }
    $path = $file->getPathname();
    $content = file_get_contents($path);
    $new = str_replace(array_keys($replacements), array_values($replacements), $content);
    if ($new !== $content) {
        file_put_contents($path, $new);
        $count++;
    }
}
echo "UPDATED_FILES={$count}\n";
