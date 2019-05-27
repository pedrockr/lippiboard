<!DOCTYPE html>
<html lang="pt-br">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Diario de Classe</title>

	<link href="css/bootstrap.css" rel="stylesheet">
	<script src="js/jquery-3.4.1.min.js"></script>


	<style>
	.bground{
		background-color: #1f2b62;
	}
	.min-height { height: 500px; } 
	</style>
</head>
<body>
	<?php require_once ('classes/CRUD_PLanoEnsino.php');?>
	<?php include_once ('conecta.php');?>

  	<div class="row"> 
  		<div class="container-fluid"> 
  			<nav class="navbar bground">
  				<div> 
  					<img src="images/logo.png"alt="..." style="width:90px"> 
  					<a class="navbar-brand" style="color:white" href="#">COORDSYS</a>  
  				</div>
  			</nav> 
  		</div> 
  	</div> 
  	<div class="container-fluid"> 
  		<div class="row flex-xl-nowrap"> 
  			<div class="col-2 bd-sidebar">
  				<?php include('layouts/menu.php') ?>
	  		</div>
			<main class="col-8 bd-content">

				<h1>Cadastro de aula</h1>
		        <form method="POST" action="classes/CRUD_PLanoEnsino.php">
		         	<div class="form-group row">
				    	<label for="PlanoEnsino" class="col-sm-3 col-form-label">Tema</label>
					    <div class="col-sm-9">
					    	<input class="form-control"type="text" name="Tema" value="<?php echo $tema ?>">
					    </div>
					</div>
					<div class="form-group row">
				    	<label for="PlanoEnsino" class="col-sm-3 col-form-label">Conteúdo de aula</label>
					    <div class="col-sm-9">
					    	<textarea class="form-control" name="Conteudo" rows="3"><?php echo $conteudo ?></textarea>
					    </div>
					</div>
					<div class="form-group row">
				    	<label for="PlanoEnsino" class="col-sm-3 col-form-label">Objetivo de aula</label>
					    <div class="col-sm-9">
					    	<textarea class="form-control" name="Objetivo" rows="5"><?php echo $objetivo ?></textarea>
					    </div>
					</div>

					<div class="form-group row">
				    	<label for="PlanoEnsino" class="col-sm-3 col-form-label">Metodologia</label>
					    <div class="col-sm-9">
					    	<textarea class="form-control" name="Metodologia" rows="3"><?php echo $metodologia ?></textarea>
					    </div>
					</div>
					<div class="form-group row">
				    	<label for="PlanoEnsino" class="col-sm-3 col-form-label">Carga Horária</label>
					    <div class="col-sm-9">
					    	<input class="form-control" name="C_H" rows="3" value="<?php echo $C_H ?>"></input>
					    </div>
					</div>

					<div class="form-group row">
				    	<label for="PlanoEnsino" class="col-sm-3 col-form-label">Professor</label>
					    <div class="col-sm-9">
					    	<select class="form-control" id="SelProf" name="FK_Prof">
					    		<?php if($fk_plano_disciplina !=0):
					    			echo ";<option value='".$fk_plano_professor."' cheched>".$professor."</option>"


					    			?>
					    		<?php endif?>
					    		<option>Professor</option>
					    		<?php 
					    			$buscaProf = "Select * from professores";
					    			$resultado = mysqli_query($con,$buscaProf);

					    			while($row	= mysqli_fetch_assoc($resultado)):?>
					    			<option value="
					    				<?php echo $row['professor_id']; ?>">
					    				<?php echo $row['professor_matricula']; ?> </option>

					    		<?php endwhile ?>
					    	</select>
					    </div>
				  	</div>

				  	<div class="form-group row">
				    	<label for="PlanoEnsino" class="col-sm-3 col-form-label">Disciplina</label>
					    <div class="col-sm-9">
					    	<select class="form-control" id="SelProf" name="FK_Disc">
					    		<?php if($fk_plano_disciplina !=0):
					    			echo ";<option value='".$fk_plano_disciplina."' cheched>".$disciplina."</option>"


					    			?>
					    		<?php endif?>
					    		
					    		<?php 
					    			$buscaDisc = "Select * from disciplinas";
					    			$resultado = mysqli_query($con,$buscaDisc);

					    			while($row	= mysqli_fetch_assoc($resultado)):?>
					    			<option value="
					    				<?php echo $row['disciplina_id']; ?>">
					    				<?php echo $row['disciplina_nome']; ?> </option>

					    		<?php endwhile ?>
					    	</select>
					    </div>
				  	</div>
			        
			        <div class="form-group row">
					    <div class="col-sm-10">
					    	<input type="hidden" name="id" value="<?php echo $id_plano; ?>">

					    	<?php if($update == false): ?>
					    		<button type="submit" name="Cadastrar" class="btn btn-primary">Cadastrar</button>
					    	<?php else: ?>
					    		<button type="submit" name="Atualizar" class="btn btn-primary">Atualizar</button>
					    	
					    	<?php endif ?>
					      
					    </div>
					</div>		    
		        
		        </form>
			</main>	
  		</div>
  	</div>


	<script type="">

	</script>		    		
	
</body>
</html>
