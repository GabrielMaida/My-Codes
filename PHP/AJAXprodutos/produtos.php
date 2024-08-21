<?php
	require_once("conexao.php");
	
	$query = "select * from produtos" .
			 " order by nome";
	$rs = mysqli_query($cn, $query) or die(mysqli_error($cn));
	
	$produtos = array();
	$i = 0;
	while ($row = mysqli_fetch_object($rs))
	{
		$produtos[$i] = array();
		$produtos[$i]["id"] = $row->id;
		$produtos[$i]["nome"] = $row->nome;
		$produtos[$i]["descricao"] = $row->descricao;
		$produtos[$i]["valor"] = $row->valor;
		$produtos[$i]["categoria"] = $row->categoria;
		$produtos[$i]["foto"] = $row->foto;
		$i++;
	}
	mysqli_free_result($rs);
	mysqli_close($cn);
	
	$json_str = json_encode($produtos);
	echo($json_str);
?>