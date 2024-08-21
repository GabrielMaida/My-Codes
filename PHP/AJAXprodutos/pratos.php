<?php
	require_once("conexao.php");
	
	$query = "select * from produtos" .
			 " order by nome";
	$rs = mysqli_query($cn, $query) or die(mysqli_error($cn));
	
	$pratos = array();
	$i = 0;
	while ($row = mysqli_fetch_object($rs))
	{
		$pratos[$i] = array();
		$pratos[$i]["id"] = $row->id_prato;
		$pratos[$i]["nome"] = $row->nome;
		$pratos[$i]["descricao"] = $row->descricao;
		$pratos[$i]["valor"] = $row->valor;
		$pratos[$i]["imagem"] = $row->imagem;
		$i++;
	}
	mysqli_free_result($rs);
	mysqli_close($cn);
	
	$json_str = json_encode($pratos);
	echo($json_str);
?>