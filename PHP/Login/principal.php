<html>
    <head>
        <meta charset="UTF-8">
        
        <?php
        if(session_status()== PHP_SESSION_NONE){
             session_start();
        }
        if(isset($_SESSION["login"])==false){
            header("location:index.php");
			exit();
            
        }
        ?>
        
        <style>		
		.body{
            background-image: url(fundo.jpg);
			background-repeat: no-repeat;
            background-size: cover;
		}
		.form{
		    margin-top: 100px;
			border-style: dotted;
            border-width: 4px;
            border-radius:10px;
            border-color: black;
            background-color: darkgrey;
            margin-left: 200px;
            margin-right: 200px;
		}
        #txt_login{
            margin-top: 40px;
        }
        #txt_senha{
            margin-bottom: 30px;
            margin-top: 30px;
        }
        button{
            margin-bottom: 30px;   
        }
   
        </style>
    </head>
    
    <body class="body">
	
        <center>
		
		<h1>
		    Cadastro:
		</h1>
		
		<div>
		<form class="form "method="post" action="login.php">
		
            <label>Login:</label>  <input type="text" name="txt_login" id="txt_login"  /><br>
			
			<label>Senha:</label>  <input type="password" name="txt_senha" id="txt_senha"  /><br>
			
            <input type="submit" value="OK" class="button "/>
			
        </form>
		</div>
		
		</center>
		
    </body>
    
</html>