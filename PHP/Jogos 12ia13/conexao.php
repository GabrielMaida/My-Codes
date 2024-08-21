<?php

$server= "serverlab03";
$usuario="12ia13";
$senha="zapaelaura";
$db="12ia13";

//cria uma conexão ao MySQL e retorna seu id
$cn= mysqli_connect($server,$usuario,$senha) or die(myqli_connect_error());

mysqli_select_db($cn,$db) or die(mysqli_error($cn));
//Retorna uma mensagem caso haja erro de conexão
//myqli_connect_error()

//escolhe um database no servidor
//mysqli_select_db(conexao,database)
//mysqli_select_db(conexao,12ia13)

//retorna uma mensagem retativa a qualquer outro erro do mysql
//mysqli_erro(conexao)
    
//para o programa,exibindo a mensagem informada
//die(mensagem)

?>