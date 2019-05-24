<?php
$servidor="localhost";
$usuario="root";
$senha="";
$bancodedados="projeto";

$con = mysqli_connect ($servidor,$usuario,$senha,$bancodedados);

$prof = (int)$_POST['id'];

$buscaDisc = "SELECT * FROM view_plano_aulas WHERE fk_plano_disciplina = '".$prof."'";
$resultado = mysqli_query($con,$buscaDisc);

//echo $prof;

while($row	= $resultado->fetch_assoc()){
echo '<option value="'.$row['id_plano'].'">'.$row['conteudo'].'</option>';
};
