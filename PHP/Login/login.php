 <?php
            
    require_once("conexao.php");

    $login=$_POST["txt_login"];
    $senha=$_POST["txt_senha"];

    $query="select * from usuarios where nmLogin ='".$login."'";

    $result =mysqli_query($cn,$query)or die(mysqli_error($cn));
    $row= mysqli_fetch_object($result);

    if($row ==false){
				header("location:index.php");
                     exit() ;
    }  
                
    if($senha !=$row ->nmSenha){
        
        header("location:index.php");
					
    }
    else{
        session_start();
        $_SESSION["login"]=$row->idUsuario;
        header("location:principal.php");
    }
?>