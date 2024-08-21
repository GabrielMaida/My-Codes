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
		    margin-top:50px;
            margin-left: 1000px;
            margin-bottom: 100px;			
		}
	    .tabela{
		    margin-top:30px;		
            padding:20px;
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
	</style>
    
    <script>
            function confirma()
            {
                if(confirm("Tem certeza que quer excluir ?")==true){
                    return true;
                }
                else{
                    return false         
                }
            }
    </script>

</head>

<body class="b">
    
	<center><h1 class="h1">Jogos</h1></center>
	
	<br>

    <center><table style="text-align:center" border="1" width="75%" class="tabela">
	    <tr>
		    <td>ID</td>
			<td>Jogo</td>
			<td>Gênero</td>
			<td>Desenvolvedora</td>
			<td>X</td>
		</tr>
        
		<?php

			require_once("conexao.php");
			$query="select * from jogos";
			$result = mysqli_query($cn,$query) or die(mysqli_error($cn));   

			while ( $row = mysqli_fetch_object($result) )
			{
        ?>
        
		<tr>
		    <td>  <a href="altera.php?id=<?= $row->id_jogo ?>">    <?= $row->id_jogo ?>         </a></td>
			<td>  <a href="altera.php?id=<?= $row->id_jogo ?>">    <?= $row->jogo ?>            </a></td>
			<td>  <a href="altera.php?id=<?= $row->id_jogo ?>">    <?= $row->genero ?>          </a></td>
			<td>  <a href="altera.php?id=<?= $row->id_jogo ?>">    <?= $row->desenvolvedora ?>  </a></td>
			<td>  
                <form method="post" action="excluir.php" onsubmit="return confirma()">
			        <input type="hidden" name="txt_id" value=" <?= $row->id_jogo ?>">
				    <input type="submit" value="Excluir" >
	            </form>
			</td>			
		</tr>
     		
	</table></center>
    
    <center><form method="post" action="novo.php" class="formulario">
	    <input type="submit" value="Novo Jogo" />
	</form></center>

</body>

</html>