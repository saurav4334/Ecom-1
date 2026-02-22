<?php
$s = "à¦†à¦ªà¦¨à¦¾à¦°";
$b = iconv('UTF-8', 'Windows-1252//IGNORE', $s);
$f = @iconv('UTF-8', 'UTF-8//IGNORE', $b);
$g = @iconv('Windows-1252', 'UTF-8//IGNORE', $b);
echo 's=' . bin2hex($s) . "\n";
echo 'b=' . bin2hex($b) . "\n";
echo 'f=' . bin2hex($f) . "\n";
echo 'g=' . bin2hex($g) . "\n";
