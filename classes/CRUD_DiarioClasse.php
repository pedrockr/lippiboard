<?php
$servidor="localhost";
$usuario="root";
$senha="";
$bancodedados="projeto";

$mysqli = new mysqli ('localhost','root','','projeto')or die(mysql_error($mysqli));
//include_once('/opt/lampp/htdocs/lippiboard/conecta.php')or die(mysql_error($con));


if(isset($_POST['Salvar'])){
		$conteudoDiario = $_POST['conteudoAbordado'];
		$statusDiario = $_POST['status'];
		$diario_criado_em  = $_POST['criado_em'];
		$fk_diario_disciplina = $_POST['FK_Disc'];
		$fk_diario_professor = $_POST['FK_Prof'];
		$fk_plano_diario = $_POST['FK_Plano'];


	$mysqli->query(
		"INSERT INTO diario_aulas (
	    `conteudo_diario`,
	    `status`,
	    `diario_criado_em`,
	    `fk_diario_disciplina`,
	    `fk_diario_professor`,
	    `fk_plano_diario`) 
    	VALUES(
        '$conteudoDiario',
        '$statusDiario',
        '$diario_criado_em',
        '$fk_diario_disciplina',
        '$fk_diario_professor',
        '$fk_plano_diario'
    )");

    header("location: /lippiboard/diarioClasse.php");
}

if (isset($_POST['Editar'])){

    	$id = $_POST['id_diario'];
    	$conteudoDiario = $_POST['conteudoAbordado'];
		$statusDiario = $_POST['status'];
		$diario_criado_em  = $_POST['criado_em'];
		$fk_diario_disciplina = $_POST['FK_Disc'];
		$fk_diario_professor = $_POST['FK_Prof'];
		$fk_plano_diario = $_POST['FK_Plano'];

		$mysqli->query("UPDATE diario_aulas SET	conteudo_diario='$conteudoDiario', status = '$statusDiario', 	diario_atualizado_em = '$diario_criado_em'	WHERE id_diario = $id");

		header("location: /lippiboard/diarioClasse.php");
    	
    }