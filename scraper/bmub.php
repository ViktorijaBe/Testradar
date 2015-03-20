
<?php 
$host = "http://www.bmub.bund.de/bmub/ausschreibungen/vergabeverfahren/"; 
$filestring = file_get_contents($host); 
$startpos = 0; 
while($pos = strpos($filestring, "<a href", $startpos)) 
{ 
     $string = substr($filestring, $pos, strpos($filestring, "</a>", $pos + 1) - $pos); 
    if(stristr($string, 'class="internal-link"')) { 
        echo $string."</br>"; 
    } 
    $startpos = $pos + 1; 
} 
?>
