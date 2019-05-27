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

	

	if($row['status'] == "Concluido"){
		echo '<div class="form-group row">
				<label for="Data" class="col-sm-3 col-form-label">Conteudo Abordado</label>
				<div class="col-sm-9">
					<textarea class="form-control" name="conteudoAbordado">'.$row['conteudo_diario'].'</textarea>
				</div>
			</div>
			<div class="form-group row">
				<label for="CH" class="col-sm-3 col-form-label">C/H</label>
				<div class="col-sm-2" id="CH">							
					<input type="text" class="form-control" id="" placeholder="" value="'.$row['C_H'].'">
				</div>

				<div class="col-sm-7">
			        <div class="form-check">
			          <input class="form-check-input" type="radio" name="status" id="" value="Concluido" checked>
			          <label class="form-check-label" for="status">Completo</label>
			        </div>
			        <div class="form-check">
			          <input class="form-check-input" type="radio" name="status" id="" value="Parcial">
			          <label class="form-check-label" for="status">Parcial</label>
			        </div>
			        <div class="form-check">
			          <input class="form-check-input" type="radio" name="status" id="" value="Não Iniciado" >
			          <label class="form-check-label" for="status">Não aplicado</label>
			      </div>
			        
		    </div>
		</div>
		<input type="hidden" name="FK_Prof"value="'.$row['professor_id'].'">
		<input type="hidden" name="FK_Disc"value="'.$row['disciplina_id'].'">
		<input type="hidden" name="FK_Plano"value="'.$row['id_plano'].'">
		<div class="form-group row">
		    <div class="col-sm-10">
		    	<input type="hidden" name="id_diario" value="'.$row['id_diario'].'">
		      	<button type="submit" name="Salvar" class="btn btn-primary">Salvar</button>
		      	<button type="submit" name="Editar" class="btn btn-primary">Editar</button>
		    </div>
		</div>
		';

	}else if($row['status']== "Parcial"){
		echo '<div class="form-group row">
		<label for="Data" class="col-sm-3 col-form-label">Conteudo Abordado</label>
			<div class="col-sm-9">
				<textarea class="form-control" name="conteudoAbordado">'.$row['conteudo_diario'].'</textarea>
			</div>
		</div>
			<div class="form-group row">
				<label for="CH" class="col-sm-3 col-form-label">C/H</label>
				<div class="col-sm-2" id="CH">							
					<input type="text" class="form-control" id="" placeholder="" value="'.$row['C_H'].'">
				</div>

				<div class="col-sm-7">
			        <div class="form-check">
			          <input class="form-check-input" type="radio" name="status" id="gridRadios1" value="Concluido">
			          <label class="form-check-label" for="status">Completo</label>
			        </div>
			        <div class="form-check">
			          <input class="form-check-input" type="radio" name="status" id="gridRadios2" value="Parcial" checked>
			          <label class="form-check-label" for="status">Parcial</label>
			        </div>
			        <div class="form-check">
			          <input class="form-check-input" type="radio" name="status" id="gridRadios3" value="Não Iniciado" >
			          <label class="form-check-label" for="status">Não aplicado</label>
			      </div>
			        
		    </div>
		</div>
		
		<input type="hidden" name="FK_Prof"value="'.$row['professor_id'].'">
		<input type="hidden" name="FK_Disc"value="'.$row['disciplina_id'].'">
		<input type="hidden" name="FK_Plano"value="'.$row['id_plano'].'">
		<div class="form-group row">
		    <div class="col-sm-10">
		    	<input type="hidden" name="id_diario" value="'.$row['id_diario'].'">
		      	<button type="submit" name="Salvar" class="btn btn-primary">Salvar</button>
		      	<button type="submit" name="Editar" class="btn btn-primary">Editar</button>
		    </div>
		</div>
		';

	}else{
		echo '<div class="form-group row">
		<label for="Data" class="col-sm-3 col-form-label">Conteudo Abordado</label>
			<div class="col-sm-9">
				<textarea class="form-control" name="conteudoAbordado">'.$row['conteudo_diario'].'</textarea>
			</div>
		</div>
			<div class="form-group row">
				<label for="CH" class="col-sm-3 col-form-label">C/H</label>
				<div class="col-sm-2" id="CH">							
					<input type="text" class="form-control" id="" placeholder="" value="'.$row['C_H'].'">
				</div>

				<div class="col-sm-7">
			        <div class="form-check">
			          <input class="form-check-input" type="radio" name="status" id="status" value="Concluido">
			          <label class="form-check-label" for="status">Completo</label>
			        </div>
			        <div class="form-check">
			          <input class="form-check-input" type="radio" name="status" id="status" value="Parcial">
			          <label class="form-check-label" for="status">Parcial</label>
			        </div>
			        <div class="form-check">
			          <input class="form-check-input" type="radio" name="status" id="status" value="Não Iniciado" checked="">
			          <label class="form-check-label" for="status">Não aplicado</label>
			      </div>
			        
		    </div>
		</div>
		<input type="hidden" name="FK_Prof"value="'.$row['professor_id'].'">
		<input type="hidden" name="FK_Disc"value="'.$row['disciplina_id'].'">
		<input type="hidden" name="FK_Plano"value="'.$row['id_plano'].'">
		<div class="form-group row">
		    <div class="col-sm-10">
		    	<input type="hidden" name="id_diario" value="'.$row['id_diario'].'">
		      	<button type="submit" name="Salvar" class="btn btn-primary">Salvar</button>
		    </div>
		</div>
		';
	}

				

endwhile;