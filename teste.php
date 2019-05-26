<?php
if (isset($_POST['enviar'])):
    $nota1 = $_POST['nota1'];
    $nota2 = $_POST['nota2'];
    $nota3 = $_POST['nota3'];
    $nota4 = $_POST['nota4'];

    $media = ($nota1 + $nota2 + $nota3 + $nota4) / 4;

endif;
?>

<!DOCTYPE html>
<html lang="en">

<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Diário Virtual</title>

  <!-- Bootstrap core CSS -->
  <link href="public/vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">
  <link href="https://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">

  <!-- Custom styles for this template -->
  <link href="css/business-frontpage.css" rel="stylesheet">
  
  <!-- JS -->
  <script src="public/vendor/jquery/jquery.min.js"></script>
  <script src="public/vendor/bootstrap/js/bootstrap.bundle.min.js"></script>

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container-fluid">
      <img src="public/img/a.png" style="width:100px" >
      <a class="navbar-brand" href="#">Diario Virtual</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item">
            <a class="nav-link" href="">Notas
              <span class="sr-only">(current)</span>
          </a>
      </li>
      <li class="nav-item">
        <a class="nav-link" href="">Faltas</a>
    </li>
</div>
</nav>
<!-- heder -->
<header class="bg-primary py-5 mb-5">
    <div class="container h-100">
      <div class="row h-100 align-items-center">
        <div class="col-lg-12">
          <div align="center">
            <h1 class="display-4 text-white mt-5 mb-2">Diário Virtual - Sistema de Faltas</h1>
            <p class="lead mb-5 text-white-50">Administração de Faltas</p>
        </div>
    </div>
</div>
</div>
</header>
<!-- CONTEUDO -->
<div class="container">
  <form action="" method="post">
    <div class="row">
      <div class="col-md-10 mb-5">
          <table class="table table-bordered table-sm">
            <thead>
              <tr>
                <th class="text-center">RGM</th>
                <th class="text-center">Nome</th>
                <th class="text-center">Notas1</th>
                <th class="text-center">Notas2</th>
                <th class="text-center">Notas3</th>
                <th class="text-center">Notas4</th>
                <th class="text-center" width="1%">Total</th>
            </tr>
        </thead>
        <tbody>
           <tr>
              <td width="10%">123456789</td>
              <td width="35%">henrique freitas hunt caldas ferreira da silva santos</td>
              <td width="5%"><input type="text" id="name1" name="nota1" required
                maxlength="8" size="6" value=""></td>
                <td width="5%"><input type="text" id="name2" name="nota2" required
                  maxlength="8" size="6" value=""></td>        
                  <td width="5%"><input type="text" id="name3" name="nota3" required
                    maxlength="8" size="6" value=""></td>         
                    <td width="5%"><input type="text" id="name4" name="nota4" required
                      maxlength="8" size="6" value=""></td>         
                      <td width="5%"><input type="text" id="name5" name="media"
                         value="<?php echo($media)?>"></td>
                     </tr>
                 </tbody>
             </table>
             <div align="right"><button class="btn btn-primary" type="submit" name="enviar">Calcular</button></div>
         </div>
         <div class="col-md-4 mb-5">
            <p></p>
        </div>
    </div>
</form>
<!-- /.row -->

</div>
<!-- Footer -->
<footer class="py-4 bg-dark" >
  <p class="m-0 text-center text-white">Módulo</p>
  <!-- /.container -->
</footer>