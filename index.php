<!DOCTYPE html>
<html lang="en">
<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<title>Document</title>

	<link href="css/bootstrap.min.css" rel="stylesheet">
	<script src="js/jquery-3.4.1.min.js"></script>


	<style>
	.bground{
		background-color: #1f2b62;
	}
	.min-height { height: 500px; } 
	</style>
</head>
<body>
	<?php include_once ('conecta.php')?>

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
  				MENU
  				<?php include('layouts/menu.php') ?>
	  		</div>
		<main class="col-8 bd-content">
			<br>
			<h2>Diario de Classe</h2>

			<form>
				<div class="form-group row">
			    	<label for="PlanoEnsino" class="col-sm-3 col-form-label">Professor</label>
				    <div class="col-sm-9">
				    	<select class="form-control" id="SelProf">
				    		<option>Professor</option>
				    		<?php 
				    			//$conexao = new mysqli('localhost', 'root', '', 'projeto') or die(mysqli_error($mysqli));
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
				    	<select class="form-control" id="SelDisc">
				    		<option>Disciplina</option>				
				    	</select>
				    </div>
			  	</div>			  	
			  	<div class="form-group row">
			    	<label for="PlanoEnsino" class="col-sm-3 col-form-label">Plano de Ensino</label>
				    <div class="col-sm-9">
				    	<select class="form-control" id="SelCont">
				    		<option>Conteudo</option>
				    	</select>
				    </div>
			  	</div>

				<div class="form-group row">
					<label for="Data" class="col-sm-3 col-form-label">Data</label>
					<div class="col-sm-9">							
						<input type="date" class="form-control" id="Data" placeholder="" value="<?php echo date('Y-m-d'); ?>">
					</div>
				</div>

				<div id="preencher"> <!-- inicio troca -->
				<div class="form-group row">
					<label for="Data" class="col-sm-3 col-form-label">Conteudo Abordado</label>
					<div class="col-sm-9">
						<textarea class="form-control"></textarea>
					</div>
				</div>
				<div class="form-group row">
					<label for="CH" class="col-sm-3 col-form-label">C/H</label>
					<div class="col-sm-2" id="CH">							
						<input type="text" class="form-control" id="" placeholder="" value="">
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
				</div>

			</div> <!-- fim da troca -->

			  	<div class="form-group row">
				    <div class="col-sm-10">
				      	<button type="submit" class="btn btn-primary">Salvar</button>
				    </div>
			  	</div>				  	
			</form>
		</main>

		<div class="col-2">
			<br>
			<div class="card">
				<div class="bground text-white card-header">
			    Em Andamento
			  	</div>
			  	<div class="card-body">				    
				    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>				    
			  	</div>
			  	<div class="card-body">				    
				    <p class="card-text">With supporting text below as a natural lead-in to additional content.</p>
			  	</div>
			</div>
		</div>

		</div>
  	</div>


	<script type="">
		$("#SelProf").on("click", function(){
			var idProf = $("#SelProf").val();

			$.ajax({
				url:'buscas/DiscBusca.php',
				type: 'POST',
				data: {id:idProf},

				success: function(data){
					$("#SelDisc").html(data);
				},
				error: function(data){
					$("#SelDisc").html("erro");
				},

			});
		})

		$("#SelDisc").on("click", function(){
			var idPLano = $("#SelDisc").val();

			$.ajax({
				url:'buscas/ContBusca.php',
				type: 'POST',
				data: {id:idPLano},

				success: function(data){
					$("#SelCont").html(data);
				},
				error: function(data){
					$("#SelCont").html("erro");
				},

			});
		})

		$("#SelCont").click(function(){
			var idDiario = $("#SelCont").val();
			$.ajax({
				url:'buscas/DiarioBusca.php',
				type: 'POST',
				data: {id:idDiario},

				success: function(data){
					$("#preencher").html(data);
				},
				error: function(data){
					$("#preencher").html("erro");
				},

			});
		})

	</script>		    		
	
</body>
</html>