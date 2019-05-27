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
				<h1>Editar PLano</h1>
				<table class="table">
					<thead>
					    <tr>
					      <th scope="col">ID</th>
					      <th scope="col">TEMA</th>
					      <th scope="col">CONTEUDO</th>
					    </tr>
					</thead>
					<tbody>
						<?php 
				    			$buscaProf = "Select * from plano_aulas";
				    			$resultado = mysqli_query($con,$buscaProf);

				    			while($row	= mysqli_fetch_assoc($resultado)):?>
				    				<tr>
				    					<th><?php echo $row['id_plano']?></th>
				    					<th><?php echo $row['tema']?></th>
				    					<th><?php echo $row['conteudo']?></th>
				    					<th>				    						
				    							<a href="cadastroPlano.php?Editar=<?php echo $row['id_plano']?>" 
				    								class="btn btn-info" name="Editar">Editar</a>
				    							<a href="classes/CRUD_PLanoEnsino.php?Deletar=<?php echo $row['id_plano']?>" 
				    							class="btn btn-info" name="Deletar">Delete</a>
				    						
				    					</th>				    					
				    				</tr>				    			
				    			<?php endwhile ?>
			    
					</tbody>
				</table>

			</main>	
  		</div>
  	</div>


	<script type="">

	</script>		    		
	
</body>
</html>
