<?php 
$host = "http://www.bbsr.bund.de/BBSR/DE/Aktuell/Forschungsprojekte/forschungsprojekte_node.html"; 
$filestring = file_get_contents($host); 
$startpos = 0; 
while($pos = strpos($filestring, "<a href", $startpos)) 
{ 
     $string = substr($filestring, $pos, strpos($filestring, "</a>", $pos + 1) - $pos); 
    if(stristr($string, 'id="ausschreibung"')) { 
        echo $string."</br>"; 
    } 
    $startpos = $pos + 1; 
} 
?>
