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
	    .formulario{
		    margin-top:100px;
			margin: 100px 500px 100px 500px;
			border-style: dotted;
            border-width: 4px;
            border-radius:10px;
            border-color: black;
            background-color: rgba(200, 200, 200, 0.95);
		}
        .b{
            background-image: url(Games.jpg);
            background-repeat: no-repeat;
            background-size: cover;
        }
        .h2{            
            margin-top:20px;
            color:black;
            font-style:italic;
        }
		.l1{
		    margin-top:30px;
			margin-left:150px;
		}
		.l2{
		    margin-top:30px;
		    margin-left:150px;
		}
		.l3{
		    margin-top:30px;
		    margin-left:150px;
			margin-bottom:20px;
		}
		.jogo{
		    margin-left:102px;
		}
		.genero{
		    margin-left:86px;
		}
		.desenvolvedora{
		    margin-left:30px;
		}
        .l4{
            margin-top:30px;
		    margin-left:260px;
            margin-bottom: 30px;
        }
        
        
	</style>
	
</head>

<body class="b">
    
	<center><h1 class="h1">Novo Jogo</h1></center>
	
    <form method="post" action="novo_grava.php" class="formulario">
	
        <center><h2 class=h2>Cadastro do Jogo</h2></center>
	    <div class="l1">
		<label>Jogo: </label>
		<input name="jogo" class="jogo" placeholder="Ex: Dead by Daylight" type="text" required>
		</div>
		
		<br><br>
		
		<div class="l2">
        <label>Gênero:</label>
		<input name="genero" class="genero" placeholder="Ex: Survival Horror" type="text" required>
		</div>
		
		<br><br>
		
		<div class="l3">
        <label>Desenvolvedora: </label>	
		<input name="desenvolvedora" class="desenvolvedora" placeholder="Ex: Behaviour Interactive" type="text" required>
		</div>
		
		<br><br>
        
        <div class="l4">	
		<input class="button" value="Salvar" type="submit" required>
		</div>
		
        <a href=inicio.php><center><h3>Voltar</h3></center></a>
        
	</form>
	
</body>

</html>