<?php
$servidor="localhost";
$usuario="root";
$senha="";
$bancodedados="projeto";

$con = mysqli_connect ($servidor,$usuario,$senha,$bancodedados);

$prof = (int)$_POST['id'];

$buscaDisc = "SELECT * FROM view_plano_aulas WHERE id_plano = '".$prof."'";
$resultado = mysqli_query($con,$buscaDisc);

//echo $prof;

while($row	= $resultado->fetch_assoc()):

		echo '<div class="form-group row">
					<label for="Data" class="col-sm-3 col-form-label">Conteudo Abordado</label>
					<div class="col-sm-9">
						<textarea class="form-control">'.$row['conteudo_diario'].'</textarea>
					</div>
				</div>
				<div class="form-group row">
					<label for="CH" class="col-sm-3 col-form-label">C/H</label>
					<div class="col-sm-2" id="CH">							
						<input type="text" class="form-control" id="" placeholder="" value="'.$row['C_H'].'">
					</div>

					<div class="col-sm-7">
				        <div class="form-check">
				          <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios1" value="option1">
				          <label class="form-check-label" for="gridRadios1">Completo</label>
				        </div>
				        <div class="form-check">
				          <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios2" value="option2">
				          <label class="form-check-label" for="gridRadios2">Parcial</label>
				        </div>
				        <div class="form-check">
				          <input class="form-check-input" type="radio" name="gridRadios" id="gridRadios3" value="option3" disabled checked="">
				          <label class="form-check-label" for="gridRadios3">Não aplicado</label>
				      </div>
				        
			      </div>
				</div>';

endwhile;