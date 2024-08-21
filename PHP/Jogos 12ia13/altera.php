<!DOCTYPE html>
<html>

<head>
    <meta charset="UTF-8">
	
	<style>
        
	    .h1{
		    margin-top:30px;
			color: white;
            font-style: italic;
		}
        .b{
            background-image: url(Games.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }
	    .formulario{
		    margin-top:100px;
			margin: 100px 500px 100px 500px;
			border-style: dotted;
            border-width: 4px;
            border-radius:10px;
            border-color: black;
            background-color: rgba(200, 200, 200, 0.95);
		}
		.l1{
		    margin-top:20px;
			margin-left:150px;
		}
		.l2{
		    margin-top:20px;
		    margin-left:150px;
		}
		.l3{
		    margin-top:20px;
		    margin-left:150px;
			margin-bottom:20px;
		}
        .l4{
            margin-top:20px;
		    margin-left:260px;
            margin-bottom:30px;
        }
		.jogo{
		    margin-left:102px;
            margin-top: 20px; 
		}
		.genero{
		    margin-left:86px;
		}
		.desenvolvedora{
		    margin-left:30px;
		}
        
	</style>
	
</head>

<body class="b">
    
	<center><h1 class="h1">Alteração de Dados</h1></center>
	
    <form method="post" action="novo_altera.php?p=Altera" class="formulario">
        
        <?php

                require_once("conexao.php");
                $id=$_GET["id"];    
                $query="select*from jogos where id_jogo=".$id; 
                $result = mysqli_query($cn,$query) or die(mysqli_error($cn));   
                $row = mysqli_fetch_object($result);{
                    
        ?>
               
        <input type="text" value="<?= $row->id_jogo ?>" name="id" hidden>
	
	    <div class="l1">
		<label>Jogo: </label>
		<input class="jogo" placeholder="Ex: Dead by Daylight" name="jogo" type="text" value="<?= $row->jogo ?>" required>
		</div>
		
		<br><br>
		
		<div class="l2">
        <label>Gênero:</label>
		<input class="genero" placeholder="Ex: Survival Horror" name="genero" type="text" value="<?= $row->genero ?>" required>
		</div>
		
		<br><br>
		
		<div class="l3">
        <label>Desenvolvedora: </label>	
		<input class="desenvolvedora" placeholder="Ex: Behaviour Interactive" name="desenvolvedora" type="text" value="<?= $row->desenvolvedora ?>" required>
		</div>
		
		<br><br>
        
        <div class="l4">	
		<input class="button" value="Alterar" type="submit" required>
		</div>
    
        <a href=inicio.php><h3><center>Voltar</center></h3></a>
        
        <?php
                                
		         }
    
		?>
		
	</form>
	
</body>

</html>