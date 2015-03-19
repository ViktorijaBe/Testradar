
<?php 
$filestream = fopen("http://www.bmbf.de/foerderungen/677.php", "r"); 
while(!feof($filestream)) { 
    $buffer = fgets($filestream, 4096); 
    echo $buffer; 
} 
fclose($filestream); 
?>
