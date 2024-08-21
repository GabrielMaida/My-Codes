<!DOCTYPE html>
<html>
	<head>
		<meta charset="UTF-8">
		
		<!--Import Google Icon Font-->
        <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
        <!--Import materialize.css-->
        <link type="text/css" rel="stylesheet" href="css/materialize.min.css"  media="screen,projection"/>
        <!--Let browser know website is optimized for mobile-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
		
		<script type="text/javascript">
			
			var sProduto =  '<div class="row" id="dvItem@">'+
				        '<div class="col s1 m1" id="dvSelecao@">'+
                               '<p>'+
                               '<label>'+
                                   '<input class="with-gap" type="radio" name="rbselect"/>'+
								   '<span></span>'+
                               '</label>'+
                               '</p>'+
						'</div>'+
						'<div class="col s4 m4" id="imgFoto@">'+
						'	<img id="foto@" src="" class="img">'+
						'</div>'+
						'<button data-target="modalDesc@" class="btn modal-trigger">Descrição</button>'+
                        '<div id="modalDesc@" class="modal">'+
		                '<div class="modal-content"><h4>Descrição</h4><p><div class="col s0 m3" id="dvDescricao@"></div></p></div>'+
                        '<div class="modal-footer"><a href="#!" class="modal-close waves-effect waves-green btn-flat">Agree</a></div>'+
                        '</div>'+
						'<div class="col s3 m1" id="dvPreco@"></div>'+
						'<div class="col s3 m3" id="dvNome@"></div>'+						
			            '</div>';
						
			function montaItem(produtos)
			{	
				for(i=0;i < produtos.length ;i++)
				{
					var s = sProduto.replace(/@/g, i);
					
					var div = document.getElementById("dvPrincipal");
								
					div.innerHTML = div.innerHTML + s;
					
					div = document.getElementById("dvNome" + i);
					div.innerHTML = produtos[i].nome;
								
					div = document.getElementById("dvPreco" + i);
					div.innerHTML = produtos[i].valor;
					
					div = document.getElementById("dvDescricao" + i);
					div.innerHTML = produtos[i].descricao;
					
					var foto = document.getElementById("foto" + i);
					foto.src = "./img/" + produtos[i].foto;
					
				}
				var elems = document.querySelectorAll('.modal');
				var instances = M.Modal.init(elems, null);
			}
						
			function buscaProduto()
			{
				var xhttp = new XMLHttpRequest();
				xhttp.onreadystatechange = function() 
				{
					if (xhttp.readyState == 4 && xhttp.status == 200)
					{
						var produtos = JSON.parse(xhttp.responseText);
						montaItem(produtos);
						
					}
				};
						
				xhttp.open("GET", "http://serverlab03/alunos/13ia20/Gabriel/Palmito/PHP/AJAXprodutos/produtos.php", true);
				xhttp.send();
			}
			
		</script>
		<style>
		    .img{
				width:160px;
				height:100px;
			}
			
		</style>
		
	</head>

	<body onload="buscaProduto()">
	
		<nav>
            <div class="nav-wrapper">
            <a href="#" class="brand-logo"> XBurgi 2.0</a>
            <ul id="nav-mobile" class="right hide-on-med-and-down">
                <li><a href="http://serverlab03/alunos/13ia20/Gabriel/Palmito/PHP/AJAXprodutos/index.php">Cardápio</a></li>
                <li><a href="http://serverlab03/alunos/13ia20/Gabriel/Palmito/PHP/AJAXprodutos/produtos.php">Montar</a></li>
                <li><a href="collapsible.html"></a></li>
            </ul>
            </div>
        </nav>
		
		<br>
		
		<div id="dvPrincipal">
	    <!--    '<div class="row" id="dvItem@">'+
				        '<div class="col s1 m1" id="dvSelecao@">'+
                               '<p>'+
                               '<label>'+
                                   '<input class="with-gap" type="radio" name="rbselect"/>'+
								   '<span></span>'+
                               '</label>'+
                               '</p>'+
						'</div>'+
						'<div class="col s2 m4" id="imgFoto@">'+
						'	<img id="foto@" src="" class="img">'+
						'</div>'+
						'<div class="col s0 m3" id="dvDescricao@"></div>'+
						'<div class="col s3 m1" id="dvPreco@"></div>'+
						'<a class="waves-effect waves-light btn modal-trigger" href="#modal1"><div class="col s4 m3" id="dvNome@"></div></a>'+
			            '</div>';  -->
		</div>
		
		<!-- <div class="col s0 m3" id="dvDescricao@"></div> -->
        
		<!-- <div id="modal1" class="modal">
		<div class="modal-content"><h4>Modal Header</h4><p>A bunch of text</p></div>
        <div class="modal-footer"><a href="#!" class="modal-close waves-effect waves-green btn-flat">Agree</a></div>
        </div> -->
		
		
	    <!--JavaScript at end of body for optimized loading-->
        <script type="text/javascript" src="js/materialize.min.js"></script>
	  
	</body>
</html>