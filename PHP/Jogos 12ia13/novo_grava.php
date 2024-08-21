<?
    require_once("conexao.php");

    $query="insert into jogos(jogo,genero,desenvolvedora)values('".$_POST["jogo"]."',' ".$_POST["genero"]."','".$_POST["desenvolvedora"]."')";
    
    mysqli_query($cn,$query)or die(mysqli_error($cn));
    
    header("location:inicio.php");

?>