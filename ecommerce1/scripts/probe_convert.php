<?php
$path=__DIR__.'/../resources/views/frontEnd/layouts/pages/details.blade.php';
$lines=file($path);
$line=$lines[335];
echo "ORIG: ".$line."\n";
$a=iconv('UTF-8','Windows-1252//IGNORE',$line);
$b=iconv('Windows-1252','UTF-8//IGNORE',$line);
echo "A: ".$a."\n";
echo "B: ".$b."\n";
?>
