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
    <?php require_once ('classes/CRUD_DiarioClasse.php');?>
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
                <br>

                <ul class="nav bground" >
                    <li class="nav-item"><a href="#O projeto" class="nav-link text-white">O projeto</a></li>
                    <li class="nav-item"><a href="#A metodologia" class="nav-link text-white">A metodologia</a></li>
                    <li class="nav-item"><a href="#Os recursos utilizados" class="nav-link text-white">Os recursos utilizados</a></li>
                    <li class="nav-item"><a href="#O grupo" class="nav-link text-white">O grupo</a></li>
                </ul>

                <h1 id="O projeto">O projeto</h1>
                <p>O presente projeto foi desenvolvido pelas turmas de 2º e 3º bimestre 
                    do curso de ADS do Centro Universitario Modulo, como ferramenta avaliativa para 
                    disciplina de :Análise e Projeto de Sistemas I, ministrado pelo 
                    professor Fábio Lippi Silva.</p>
                <p>Neste projeto buscou-se realizar a construção de uma ferramenta de 
                    interação acadêmica entre alunos e professores, gerando uma maior 
                    praticidade e facilidade no sistema de amostragem disciplinar, 
                    proporcionando uma melhor compreensão das diversas formas de 
                    apresentação de metodologia acadêmica.</p>

                <h1 id="A metodologia">A metodologia</h1>
                <p>Método de gestão e planejamento de projetos Scrum.</p>
                <p>Na metodologia Scrum, os projetos são dividos em ciclos chamados de 
                    Sprints. Cada Sprint representa um Time Box dentro do qual um conjunto 
                    de atividades deve ser executado. </p>
                <p>As funcionalidades a serem implementadas em um projeto são mantidas em 
                    uma lista que é conhecida como Product Backlog. No início de cada Sprint,
                    faz-se um Sprint Planning Meeting, ou seja, uma reunião de planejamento
                    na qual o Product Owner prioriza os itens do Product Backlog e a equipe
                    seleciona as atividades que ela será capaz de implementar durante o 
                    Sprint que se inicia. As tarefas alocadas em um Sprint são transferidas 
                    do Product Backlog para o Sprint Backlog.</p>
                <p>A cada dia de uma Sprint, a equipe faz uma breve reunião 
                    (normalmente de manhã), chamada Daily Scrum. O objetivo é disseminar 
                    conhecimento sobre o que foi feito no dia anterior, identificar 
                    impedimentos e priorizar o trabalho do dia que se inicia.</p>
                <p>Ao final de um Sprint, a equipe apresenta as funcionalidades implementadas 
                    em uma Sprint Review Meeting. Finalmente, faz-se uma Sprint Retrospective
                    e a equipe parte para o planejamento do próximo Sprint. Assim reinicia-se o ciclo.</p>
                <h1 id="Os recursos utilizados">Os recursos utilizados</h1>
                <p>Para este projeto foram utilizados as seguintes ferramentas.</p>
                <p>Framework codeigniter e framework bootstrap, como ferramentas de CSS.</p>
                <p>Linguagens HTML5 e PHP.</p>
                <p>Banco de Dados Local: Xampp.</p>
            
                <h1 id="O grupo">O grupo</h1>    

                <img src="/lippiboard/images/pre_estreia_de_vingadores_ultimato.jpg" 
                 alt="Grupo" width="1000" height="506"/>

        
            </main> 
        </div>
    </div>
</body>
</html>
