<?php 
$host = "http://www.bmwi.de/DE/Service/ausschreibungen.html"; 
$filestring = file_get_contents($host); 
$startpos = 0; 
while($pos = strpos($filestring, "<a href", $startpos)) 
{ 
     $string = substr($filestring, $pos, strpos($filestring, "</a>", $pos + 1) - $pos); 
    if(stristr($string, 'class="listTitle"')) { 
        echo $string."</br>"; 
    } 
    $startpos = $pos + 1; 
} 
?>
