<?
    require_once("conexao.php");
    $excluir=$_POST["txt_id"];
    $query="DELETE FROM jogos WHERE id_jogo='".$excluir."'";
    mysqli_query($cn,$query)or die(mysqli_error($cn));
    
    header("location:inicio.php");

?>
