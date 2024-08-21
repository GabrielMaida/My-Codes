<?php

    require_once("conexao.php");
    $query="select* from jogos";
    $result = mysqli_query($cn,$query) or die(mysqli_error($cn));   
  
    while ( $row = mysqli_fetch_object($result) ) {
    
        echo($row->jogo);
        echo(" | ");
        echo($row-> genero);
        echo(" | ");
        echo($row-> desenvolvedora);
        echo("<br>");

    }
    
?>