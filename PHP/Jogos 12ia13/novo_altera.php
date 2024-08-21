<?
    require_once("conexao.php");

    $query="UPDATE jogos SET". 
    " jogo='".$_POST["jogo"]."',".
    " genero='".$_POST["genero"]."',".
    " desenvolvedora='".$_POST["desenvolvedora"]."' ".
    " WHERE id_jogo='".$_POST["id"] ."'";

    mysqli_query($cn,$query)or die(mysqli_error($cn));
    
    header("location:inicio.php");

?>