<?php 
$host = "http://www.bmbf.de/foerderungen/677.php"; 
$filestring = file_get_contents($host); 
$startpos = 0; 
while($pos = strpos($filestring, "<a href", $startpos)) 
{ 
     $string = substr($filestring, $pos, strpos($filestring, "</a>", $pos + 1) - $pos); 
    if(stristr($string, 'class="linkmoreinfoBLK ym-noprint')) { 
        echo $string."</br>"; 
    } 
    $startpos = $pos + 1; 
} 
?>
