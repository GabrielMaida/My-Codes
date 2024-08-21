<?php

$server= "serverlab03";
$usuario="13ia22";
$senha="manisa";
$db="13ia22";

$cn= mysqli_connect($server,$usuario,$senha) or die(myqli_connect_error());

mysqli_select_db($cn,$db) or die(mysqli_error($cn));

?>