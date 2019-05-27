<?php
$servidor="localhost";
$usuario="root";
$senha="";
$bancodedados="projeto";

$mysqli = new mysqli ('localhost','root','','projeto')or die(mysql_error($mysqli));
		$update = false;
		$tema = '';
		$conteudo = '';
		$C_H = '';
		$objetivo = '';
		$metodologia = '';
		$fk_plano_disciplina = '';
		$fk_plano_professor = '';



if(isset($_POST['Cadastrar'])){
	$tema = $_POST['Tema'];
	$conteudo = $_POST['Conteudo'];
	$C_H = (int)$_POST['C_H'];
	$objetivo = $_POST['Objetivo'];
	$metodologia = $_POST['Metodologia'];
	$fk_plano_disciplina = (int)$_POST['FK_Disc'];
	$fk_plano_professor = (int)$_POST['FK_Prof'];

	$mysqli->query("INSERT INTO plano_aulas (`tema`,`conteudo`,`C_H`,`objetivo`,`metodologia`,`fk_plano_disciplina`,`fk_plano_professor`) 
	VALUES('$tema','$conteudo','$C_H','$objetivo','$metodologia','$fk_plano_disciplina','$fk_plano_professor')")or die(mysql_error($mysqli));

	header('location: /lippiboard/cadastroPlano.php');
}

if(isset($_GET['Deletar'])){
	$id = (int)$_GET['Deletar'];

	$mysqli->query("DELETE FROM plano_aulas WHERE id_plano = $id") or die(mysql_error($mysqli));

	header('location: /lippiboard/listarPlano.php');
}
if(isset($_GET['Editar'])){
	$id = (int)$_GET['Editar'];
	$resultado = $mysqli->query("SELECT * FROM view_plano_aulas WHERE id_plano = $id")or die(mysql_error($mysqli));

	$update = true;
		$row = $resultado->fetch_array();

		$id_plano = $row['id_plano'];
		$tema = $row['tema'];
		$conteudo = $row['conteudo'];
		$C_H = $row['C_H'];
		$objetivo = $row['objetivo'];
		$metodologia = $row['metodologia'];
		$fk_plano_disciplina = $row['fk_plano_disciplina'];
		$fk_plano_professor = $row['fk_plano_professor'];


		$disciplina = $row['disciplina_nome'];
		$professor = $row['professor_matricula'];
}

if(isset($_POST['Atualizar'])){
	$id = (int)$_POST['id'];

	$tema = $_POST['Tema'];
	$conteudo = $_POST['Conteudo'];
	$C_H = (int)$_POST['C_H'];
	$objetivo = $_POST['Objetivo'];
	$metodologia = $_POST['Metodologia'];
	$fk_plano_disciplina = (int)$_POST['FK_Disc'];
	$fk_plano_professor = (int)$_POST['FK_Prof'];


	$mysqli->query("UPDATE plano_aulas SET tema='$tema',conteudo='$conteudo',C_H='$C_H', objetivo='$objetivo', metodologia='$metodologia', fk_plano_disciplina='$fk_plano_disciplina', fk_plano_professor='$fk_plano_professor' WHERE id_plano = $id");

	header('location: /lippiboard/listarPlano.php');
}