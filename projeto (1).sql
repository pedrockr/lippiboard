-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: May 26, 2019 at 09:46 PM
-- Server version: 10.1.40-MariaDB
-- PHP Version: 7.3.5

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `projeto`
--

-- --------------------------------------------------------

--
-- Table structure for table `alunos`
--

CREATE TABLE `alunos` (
  `aluno_id` int(11) NOT NULL,
  `aluno_rgm` varchar(20) NOT NULL,
  `aluno_pessoa_id` int(11) NOT NULL,
  `aluno_usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `anexos`
--

CREATE TABLE `anexos` (
  `anexo_id` int(11) NOT NULL,
  `anexo_nome` varchar(200) NOT NULL,
  `anexo_projeto_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `anexos_repositorios_de_ideias`
--

CREATE TABLE `anexos_repositorios_de_ideias` (
  `anexo_repositorio_de_ideia_id` int(11) NOT NULL,
  `anexo_repositorio_de_ideia_nome` varchar(200) NOT NULL,
  `anexo_repositorio_de_ideia_repositorio_de_ideia_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `anos`
--

CREATE TABLE `anos` (
  `ano_id` int(11) NOT NULL,
  `ano_nome` year(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `assessores_academicos`
--

CREATE TABLE `assessores_academicos` (
  `assessor_academico_id` int(11) NOT NULL,
  `assessor_academico_matricula` varchar(20) NOT NULL,
  `assessor_academico_pessoa_id` int(11) NOT NULL,
  `assessor_academico_usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `atendimentos_dos_monitores`
--

CREATE TABLE `atendimentos_dos_monitores` (
  `a_m_id` int(11) NOT NULL,
  `a_m_horario_inicial` time NOT NULL,
  `a_m_horario_final` time NOT NULL,
  `a_m_dia_da_semana_id` int(11) NOT NULL,
  `a_m_monitor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `aulas`
--

CREATE TABLE `aulas` (
  `aula_id` int(11) NOT NULL,
  `aula_periodo_id` int(11) NOT NULL,
  `aula_semana_id` int(11) NOT NULL,
  `aula_disciplina_id` int(11) NOT NULL,
  `aula_turma_id` int(11) NOT NULL,
  `aula_professor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `campus`
--

CREATE TABLE `campus` (
  `campus_id` int(11) NOT NULL,
  `campus_nome` varchar(200) NOT NULL,
  `campus_cnpj` varchar(50) NOT NULL,
  `campus_email` varchar(100) NOT NULL,
  `campus_telefone` varchar(20) NOT NULL,
  `campus_cep` varchar(20) NOT NULL,
  `campus_logradouro` varchar(200) NOT NULL,
  `campus_numero` varchar(10) NOT NULL,
  `campus_bairro` varchar(100) NOT NULL,
  `campus_cidade` varchar(100) NOT NULL,
  `campus_estado_sigla` char(2) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `coordenadores`
--

CREATE TABLE `coordenadores` (
  `coordenador_id` int(11) NOT NULL,
  `coordenador_matricula` varchar(20) NOT NULL,
  `coordenador_pessoa_id` int(11) NOT NULL,
  `coordenador_usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `cursos`
--

CREATE TABLE `cursos` (
  `curso_id` int(11) NOT NULL,
  `curso_nome` varchar(100) NOT NULL,
  `curso_codigo` varchar(20) NOT NULL,
  `curso_carga_horaria` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `diario_aulas`
--

CREATE TABLE `diario_aulas` (
  `id_diario` int(11) NOT NULL,
  `conteudo_diario` varchar(200) DEFAULT NULL,
  `status` varchar(30) DEFAULT NULL,
  `diario_criado_em` date DEFAULT NULL,
  `diario_atualizado_em` date DEFAULT NULL,
  `fk_diario_disciplina` int(11) DEFAULT NULL,
  `fk_diario_professor` int(11) DEFAULT NULL,
  `fk_plano_diario` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `diario_aulas`
--

INSERT INTO `diario_aulas` (`id_diario`, `conteudo_diario`, `status`, `diario_criado_em`, `diario_atualizado_em`, `fk_diario_disciplina`, `fk_diario_professor`, `fk_plano_diario`) VALUES
(1, 'teste do diario', 'Parcial', NULL, '2019-05-25', 1, 1, 1),
(2, 'conteudo de teste 2', 'Parcial', NULL, NULL, 3, 1, 2),
(13, 'sdfsdfsdf', 'Parcial', '2019-05-26', NULL, 4, 2, 4);

-- --------------------------------------------------------

--
-- Table structure for table `dias_da_semana`
--

CREATE TABLE `dias_da_semana` (
  `dia_da_semana_id` int(11) NOT NULL,
  `dia_da_semana_nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `disciplinas`
--

CREATE TABLE `disciplinas` (
  `disciplina_id` int(11) NOT NULL,
  `disciplina_nome` varchar(100) NOT NULL,
  `disciplina_codigo` varchar(20) NOT NULL,
  `disciplina_carga_horaria` time NOT NULL,
  `disciplina_hora_aula` time NOT NULL,
  `disciplina_hora_relogio` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `disciplinas`
--

INSERT INTO `disciplinas` (`disciplina_id`, `disciplina_nome`, `disciplina_codigo`, `disciplina_carga_horaria`, `disciplina_hora_aula`, `disciplina_hora_relogio`) VALUES
(1, 'banco de dados joao', '123', '00:00:04', '00:00:04', '00:00:04'),
(2, 'teste de cadastro joao', '124', '00:00:04', '00:00:04', '00:00:04'),
(3, 'disciplina 1 jose', '12312', '00:00:04', '00:00:04', '00:00:04'),
(4, 'disciplina 2 jose', '123123', '00:00:04', '00:00:04', '00:00:04');

-- --------------------------------------------------------

--
-- Table structure for table `disciplinas_dos_projetos`
--

CREATE TABLE `disciplinas_dos_projetos` (
  `disciplina_do_projeto_id` int(11) NOT NULL,
  `disciplina_do_projeto_projeto_id` int(11) NOT NULL,
  `disciplina_do_projeto_disciplina_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `eventos`
--

CREATE TABLE `eventos` (
  `evento_id` int(11) NOT NULL,
  `evento_title` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci DEFAULT NULL,
  `evento_body` longtext CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `evento_url` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `evento_class` varchar(45) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL DEFAULT 'event-important',
  `evento_start` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `evento_end` varchar(15) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `evento_inicio_normal` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `evento_final_normal` varchar(50) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `evento_status` tinyint(1) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `integrantes_dos_projetos`
--

CREATE TABLE `integrantes_dos_projetos` (
  `integrante_do_projeto_id` int(11) NOT NULL,
  `integrante_do_projeto_projeto_id` int(11) NOT NULL,
  `integrante_do_projeto_aluno_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `listas`
--

CREATE TABLE `listas` (
  `lista_id` int(11) NOT NULL,
  `lista_presenca` tinyint(1) NOT NULL,
  `lista_data` datetime NOT NULL,
  `lista_aluno_id` int(11) NOT NULL,
  `lista_aula_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `meses`
--

CREATE TABLE `meses` (
  `mes_id` int(11) NOT NULL,
  `mes_nome` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `monitores`
--

CREATE TABLE `monitores` (
  `monitor_id` int(11) NOT NULL,
  `monitor_bolsista` tinyint(1) NOT NULL,
  `monitor_foto` varchar(100) NOT NULL,
  `monitor_aluno_id` int(11) NOT NULL,
  `monitor_curso_id` int(11) NOT NULL,
  `monitor_disciplina_id` int(11) NOT NULL,
  `monitor_campus_id` int(11) NOT NULL,
  `monitor_mes_id` int(11) NOT NULL,
  `monitor_semestre_id` int(11) NOT NULL,
  `monitor_ano_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `niveis_de_acessos`
--

CREATE TABLE `niveis_de_acessos` (
  `nivel_de_acesso_id` int(11) NOT NULL,
  `nivel_de_acesso_nome` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nomes_das_turmas`
--

CREATE TABLE `nomes_das_turmas` (
  `nome_da_turma_id` int(11) NOT NULL,
  `nome_da_turma_nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nomes_dos_semestres`
--

CREATE TABLE `nomes_dos_semestres` (
  `nome_do_semestre_id` int(11) NOT NULL,
  `nome_do_semestre_nome` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `notas`
--

CREATE TABLE `notas` (
  `nota_id` int(11) NOT NULL,
  `nota_valor` float NOT NULL,
  `nota_parametro_nota_id` int(11) NOT NULL,
  `nota_disciplina_id` int(11) NOT NULL,
  `nota_professor_id` int(11) NOT NULL,
  `nota_aluno_id` int(11) NOT NULL,
  `nota_curso_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `parametros_notas`
--

CREATE TABLE `parametros_notas` (
  `parametro_nota_id` int(11) NOT NULL,
  `parametro_nota_nome` varchar(50) NOT NULL,
  `parametro_nota_descricao` longtext,
  `parametro_nota_valor_maximo` double UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `periodos`
--

CREATE TABLE `periodos` (
  `periodo_id` int(11) NOT NULL,
  `periodo_nome` varchar(50) NOT NULL,
  `periodo_hora_inicio` time NOT NULL,
  `periodo_hora_termino` time NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `periodos_dos_semestres`
--

CREATE TABLE `periodos_dos_semestres` (
  `periodo_do_semestre_id` int(11) NOT NULL,
  `periodo_do_semestre_inicio` date NOT NULL,
  `periodo_do_semestre_fim` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `pessoas`
--

CREATE TABLE `pessoas` (
  `pessoa_id` int(11) NOT NULL,
  `pessoa_nome` varchar(100) NOT NULL,
  `pessoa_cpf` varchar(20) NOT NULL,
  `pessoa_email` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `pessoas`
--

INSERT INTO `pessoas` (`pessoa_id`, `pessoa_nome`, `pessoa_cpf`, `pessoa_email`) VALUES
(1, 'joao', '124', 'joao@joao'),
(2, 'Jose', '12345678', 'jose@jose');

-- --------------------------------------------------------

--
-- Table structure for table `plano_aulas`
--

CREATE TABLE `plano_aulas` (
  `id_plano` int(11) NOT NULL,
  `tema` varchar(50) DEFAULT NULL,
  `conteudo` varchar(200) DEFAULT NULL,
  `C_H` int(11) DEFAULT NULL,
  `objetivo` varchar(200) DEFAULT NULL,
  `metodologia` varchar(100) DEFAULT NULL,
  `criado_em` date DEFAULT NULL,
  `atualizado_em` date DEFAULT NULL,
  `fk_plano_disciplina` int(11) DEFAULT NULL,
  `fk_plano_professor` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `plano_aulas`
--

INSERT INTO `plano_aulas` (`id_plano`, `tema`, `conteudo`, `C_H`, `objetivo`, `metodologia`, `criado_em`, `atualizado_em`, `fk_plano_disciplina`, `fk_plano_professor`) VALUES
(1, 'Tema 1', 'Conteudo a ser abordado 1', 4, 'pasjdoasdo', 'apijaspdjpasd', '2019-05-20', '2019-05-20', 1, 1),
(2, 'Tema 2', 'Conteudo a ser abordado ', 4, 'aijpaijdpaj', 'pjpokasd', '2019-05-20', '2019-05-20', 2, 1),
(3, 'tema de teste', 'Tema de teste 1', 4, 'qwsdasc', 'sdcas', '2019-05-21', '2019-05-21', 3, 2),
(4, 'Tema de teste 2', 'Tema de teste 2 do jose', 4, 'sdfsdvad', 'adsasdv', '2019-05-21', '2019-05-21', 4, 2),
(5, 'tema de teste 1', 'wfdfsdf', 4, 'sdfsdfsdfsdf', 'sdfsdfsdf', '2019-05-22', '2019-05-22', 1, 1);

-- --------------------------------------------------------

--
-- Table structure for table `professores`
--

CREATE TABLE `professores` (
  `professor_id` int(11) NOT NULL,
  `professor_matricula` varchar(20) NOT NULL,
  `professor_pessoa_id` int(11) NOT NULL,
  `professor_usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `professores`
--

INSERT INTO `professores` (`professor_id`, `professor_matricula`, `professor_pessoa_id`, `professor_usuario_id`) VALUES
(1, 'P20010', 1, 1),
(2, 'P20012', 2, 2);

-- --------------------------------------------------------

--
-- Table structure for table `projetos`
--

CREATE TABLE `projetos` (
  `projeto_id` int(11) NOT NULL,
  `projeto_nome` varchar(200) NOT NULL,
  `projeto_data_de_entrega` date NOT NULL,
  `projeto_descricao` longtext NOT NULL,
  `projeto_semestre_id` int(11) NOT NULL,
  `projeto_ano_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relatorios_avaliativos_diarios`
--

CREATE TABLE `relatorios_avaliativos_diarios` (
  `r_a_d_id` int(11) NOT NULL,
  `r_a_d_data_da_monitoria` date NOT NULL,
  `r_a_d_foto_da_monitoria` varchar(100) NOT NULL,
  `r_a_d_descricao` longtext NOT NULL,
  `r_a_d_progresso` longtext NOT NULL,
  `r_a_d_dominio_do_conteudo` longtext NOT NULL,
  `r_a_d__disciplina_id` int(11) NOT NULL,
  `r_a_d__professor_id` int(11) NOT NULL,
  `r_a_d__monitor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relatorios_avaliativos_mensais`
--

CREATE TABLE `relatorios_avaliativos_mensais` (
  `r_a_m_id` int(11) NOT NULL,
  `r_a_m_data_do_relatorio` date NOT NULL,
  `r_a_m_descricao` longtext NOT NULL,
  `r_a_m_progresso` longtext NOT NULL,
  `r_a_m_dominio_do_conteudo` longtext NOT NULL,
  `r_a_m_disciplina_id` int(11) NOT NULL,
  `r_a_m_professor_id` int(11) NOT NULL,
  `r_a_m_monitor_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `relatorios_diarios_dos_relatorios_mensais`
--

CREATE TABLE `relatorios_diarios_dos_relatorios_mensais` (
  `r_d_r_m_id` int(11) NOT NULL,
  `r_d_r_m_r_a_m_id` int(11) NOT NULL,
  `r_d_r_m_r_a_d_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `repositorios_de_ideias`
--

CREATE TABLE `repositorios_de_ideias` (
  `repositorio_de_ideia_id` int(11) NOT NULL,
  `repositorio_de_ideia_titulo` varchar(200) NOT NULL,
  `repositorio_de_ideia_nome` varchar(100) NOT NULL,
  `repositorio_de_ideia_email` varchar(50) NOT NULL,
  `repositorio_de_ideia_descricao` longtext NOT NULL,
  `repositorio_de_ideia_data` datetime NOT NULL,
  `repositorio_de_ideia_usuario_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `semestres`
--

CREATE TABLE `semestres` (
  `semestre_id` int(11) NOT NULL,
  `semestre_nome_do_semestre_id` int(11) NOT NULL,
  `semestre_periodo_do_semestre_id` int(11) NOT NULL,
  `semestre_ano_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `turmas`
--

CREATE TABLE `turmas` (
  `turma_id` int(11) NOT NULL,
  `turma_nome_da_turma_id` int(11) NOT NULL,
  `turma_semestre_id` int(11) NOT NULL,
  `turma_curso_id` int(11) NOT NULL,
  `turma_coordenador_id` int(11) NOT NULL,
  `turma_aluno_id` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `usuarios`
--

CREATE TABLE `usuarios` (
  `usuario_id` int(11) NOT NULL,
  `usuario_nome` varchar(20) NOT NULL,
  `usuario_senha` varchar(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `usuarios`
--

INSERT INTO `usuarios` (`usuario_id`, `usuario_nome`, `usuario_senha`) VALUES
(1, 'joao', '123'),
(2, 'jose', '12345');

-- --------------------------------------------------------

--
-- Table structure for table `usuarios_e_niveis`
--

CREATE TABLE `usuarios_e_niveis` (
  `usuario_e_nivel_id` int(11) NOT NULL,
  `usuario_e_nivel_usuario_id` int(11) NOT NULL,
  `usuario_e_nivel_nivel_de_acesso_id` int(11) NOT NULL DEFAULT '1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Stand-in structure for view `view_plano_aulas`
-- (See below for the actual view)
--
CREATE TABLE `view_plano_aulas` (
`id_plano` int(11)
,`tema` varchar(50)
,`conteudo` varchar(200)
,`C_H` int(11)
,`objetivo` varchar(200)
,`metodologia` varchar(100)
,`criado_em` date
,`atualizado_em` date
,`fk_plano_disciplina` int(11)
,`fk_plano_professor` int(11)
,`id_diario` int(11)
,`conteudo_diario` varchar(200)
,`status` varchar(30)
,`diario_criado_em` date
,`diario_atualizado_em` date
,`fk_diario_disciplina` int(11)
,`fk_diario_professor` int(11)
,`fk_plano_diario` int(11)
,`professor_id` int(11)
,`professor_matricula` varchar(20)
,`professor_pessoa_id` int(11)
,`professor_usuario_id` int(11)
,`disciplina_id` int(11)
,`disciplina_nome` varchar(100)
,`disciplina_codigo` varchar(20)
,`disciplina_carga_horaria` time
,`disciplina_hora_aula` time
,`disciplina_hora_relogio` time
);

-- --------------------------------------------------------

--
-- Structure for view `view_plano_aulas`
--
DROP TABLE IF EXISTS `view_plano_aulas`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `view_plano_aulas`  AS  select `a`.`id_plano` AS `id_plano`,`a`.`tema` AS `tema`,`a`.`conteudo` AS `conteudo`,`a`.`C_H` AS `C_H`,`a`.`objetivo` AS `objetivo`,`a`.`metodologia` AS `metodologia`,`a`.`criado_em` AS `criado_em`,`a`.`atualizado_em` AS `atualizado_em`,`a`.`fk_plano_disciplina` AS `fk_plano_disciplina`,`a`.`fk_plano_professor` AS `fk_plano_professor`,`b`.`id_diario` AS `id_diario`,`b`.`conteudo_diario` AS `conteudo_diario`,`b`.`status` AS `status`,`b`.`diario_criado_em` AS `diario_criado_em`,`b`.`diario_atualizado_em` AS `diario_atualizado_em`,`b`.`fk_diario_disciplina` AS `fk_diario_disciplina`,`b`.`fk_diario_professor` AS `fk_diario_professor`,`b`.`fk_plano_diario` AS `fk_plano_diario`,`p`.`professor_id` AS `professor_id`,`p`.`professor_matricula` AS `professor_matricula`,`p`.`professor_pessoa_id` AS `professor_pessoa_id`,`p`.`professor_usuario_id` AS `professor_usuario_id`,`d`.`disciplina_id` AS `disciplina_id`,`d`.`disciplina_nome` AS `disciplina_nome`,`d`.`disciplina_codigo` AS `disciplina_codigo`,`d`.`disciplina_carga_horaria` AS `disciplina_carga_horaria`,`d`.`disciplina_hora_aula` AS `disciplina_hora_aula`,`d`.`disciplina_hora_relogio` AS `disciplina_hora_relogio` from (((`plano_aulas` `a` left join `diario_aulas` `b` on((`b`.`fk_plano_diario` = `a`.`id_plano`))) left join `professores` `p` on((`a`.`fk_plano_professor` = `p`.`professor_id`))) left join `disciplinas` `d` on((`a`.`fk_plano_disciplina` = `d`.`disciplina_id`))) ;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `alunos`
--
ALTER TABLE `alunos`
  ADD PRIMARY KEY (`aluno_id`),
  ADD UNIQUE KEY `aluno_rgm_UNIQUE` (`aluno_rgm`),
  ADD KEY `fk_alunos_pessoas1_idx` (`aluno_pessoa_id`),
  ADD KEY `fk_alunos_usuarios1_idx` (`aluno_usuario_id`);

--
-- Indexes for table `anexos`
--
ALTER TABLE `anexos`
  ADD PRIMARY KEY (`anexo_id`),
  ADD KEY `fk_anexos_projetos1_idx` (`anexo_projeto_id`);

--
-- Indexes for table `anexos_repositorios_de_ideias`
--
ALTER TABLE `anexos_repositorios_de_ideias`
  ADD PRIMARY KEY (`anexo_repositorio_de_ideia_id`),
  ADD KEY `fk_anexos_repositorios_de_ideias_repositorios_de_ideias1_idx` (`anexo_repositorio_de_ideia_repositorio_de_ideia_id`);

--
-- Indexes for table `anos`
--
ALTER TABLE `anos`
  ADD PRIMARY KEY (`ano_id`);

--
-- Indexes for table `assessores_academicos`
--
ALTER TABLE `assessores_academicos`
  ADD PRIMARY KEY (`assessor_academico_id`),
  ADD UNIQUE KEY `acessor_academico_matricula_UNIQUE` (`assessor_academico_matricula`),
  ADD KEY `fk_assessor_academico_pessoas1_idx` (`assessor_academico_pessoa_id`),
  ADD KEY `fk_assessores_academicos_usuarios1_idx` (`assessor_academico_usuario_id`);

--
-- Indexes for table `atendimentos_dos_monitores`
--
ALTER TABLE `atendimentos_dos_monitores`
  ADD PRIMARY KEY (`a_m_id`),
  ADD KEY `fk_atendimentos_dos_monitores_dias_da_semana1_idx` (`a_m_dia_da_semana_id`),
  ADD KEY `fk_atendimentos_dos_monitores_monitores1_idx` (`a_m_monitor_id`);

--
-- Indexes for table `aulas`
--
ALTER TABLE `aulas`
  ADD PRIMARY KEY (`aula_id`),
  ADD KEY `fk_aula_periodos1_idx` (`aula_periodo_id`),
  ADD KEY `fk_aula_semana1_idx` (`aula_semana_id`),
  ADD KEY `fk_aula_disciplinas1_idx` (`aula_disciplina_id`),
  ADD KEY `fk_aula_turma1_idx` (`aula_turma_id`),
  ADD KEY `fk_aula_professores1_idx` (`aula_professor_id`);

--
-- Indexes for table `campus`
--
ALTER TABLE `campus`
  ADD PRIMARY KEY (`campus_id`),
  ADD UNIQUE KEY `campus_email_UNIQUE` (`campus_email`),
  ADD UNIQUE KEY `campus_telefone_UNIQUE` (`campus_telefone`),
  ADD UNIQUE KEY `campus_cnpj_UNIQUE` (`campus_cnpj`);

--
-- Indexes for table `coordenadores`
--
ALTER TABLE `coordenadores`
  ADD PRIMARY KEY (`coordenador_id`),
  ADD UNIQUE KEY `coordenador_matricula_UNIQUE` (`coordenador_matricula`),
  ADD KEY `fk_coordenadores_pessoas1_idx` (`coordenador_pessoa_id`),
  ADD KEY `fk_coordenadores_usuarios1_idx` (`coordenador_usuario_id`);

--
-- Indexes for table `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`curso_id`),
  ADD UNIQUE KEY `curso_nome_UNIQUE` (`curso_nome`),
  ADD UNIQUE KEY `curso_codigo_UNIQUE` (`curso_codigo`);

--
-- Indexes for table `diario_aulas`
--
ALTER TABLE `diario_aulas`
  ADD PRIMARY KEY (`id_diario`),
  ADD KEY `fk_diario_professor` (`fk_diario_professor`),
  ADD KEY `fk_diario_disciplina` (`fk_diario_disciplina`),
  ADD KEY `fk_plano_diario` (`fk_plano_diario`);

--
-- Indexes for table `dias_da_semana`
--
ALTER TABLE `dias_da_semana`
  ADD PRIMARY KEY (`dia_da_semana_id`),
  ADD UNIQUE KEY `semana_nome_UNIQUE` (`dia_da_semana_nome`);

--
-- Indexes for table `disciplinas`
--
ALTER TABLE `disciplinas`
  ADD PRIMARY KEY (`disciplina_id`),
  ADD UNIQUE KEY `disciplina_nome_UNIQUE` (`disciplina_nome`),
  ADD UNIQUE KEY `disciplina_codigo_UNIQUE` (`disciplina_codigo`);

--
-- Indexes for table `disciplinas_dos_projetos`
--
ALTER TABLE `disciplinas_dos_projetos`
  ADD PRIMARY KEY (`disciplina_do_projeto_id`),
  ADD KEY `fk_disciplinas_dos_projetos_projetos1_idx` (`disciplina_do_projeto_projeto_id`),
  ADD KEY `fk_disciplinas_dos_projetos_disciplinas1_idx` (`disciplina_do_projeto_disciplina_id`);

--
-- Indexes for table `eventos`
--
ALTER TABLE `eventos`
  ADD PRIMARY KEY (`evento_id`);

--
-- Indexes for table `integrantes_dos_projetos`
--
ALTER TABLE `integrantes_dos_projetos`
  ADD PRIMARY KEY (`integrante_do_projeto_id`),
  ADD KEY `fk_integrantes_e_disciplinas_dos_projetos_projetos1_idx` (`integrante_do_projeto_projeto_id`),
  ADD KEY `fk_integrantes_e_disciplinas_dos_projetos_alunos1_idx` (`integrante_do_projeto_aluno_id`);

--
-- Indexes for table `listas`
--
ALTER TABLE `listas`
  ADD PRIMARY KEY (`lista_id`),
  ADD KEY `fk_lista_alunos1_idx` (`lista_aluno_id`),
  ADD KEY `fk_lista_aula1_idx` (`lista_aula_id`);

--
-- Indexes for table `meses`
--
ALTER TABLE `meses`
  ADD PRIMARY KEY (`mes_id`);

--
-- Indexes for table `monitores`
--
ALTER TABLE `monitores`
  ADD PRIMARY KEY (`monitor_id`),
  ADD KEY `fk_monitores_alunos1_idx` (`monitor_aluno_id`),
  ADD KEY `fk_monitores_cursos1_idx` (`monitor_curso_id`),
  ADD KEY `fk_monitores_campus1_idx` (`monitor_campus_id`),
  ADD KEY `fk_monitores_meses1_idx` (`monitor_mes_id`),
  ADD KEY `fk_monitores_semestres1_idx` (`monitor_semestre_id`),
  ADD KEY `fk_monitores_anos1_idx` (`monitor_ano_id`),
  ADD KEY `fk_monitores_disciplinas1_idx` (`monitor_disciplina_id`);

--
-- Indexes for table `niveis_de_acessos`
--
ALTER TABLE `niveis_de_acessos`
  ADD PRIMARY KEY (`nivel_de_acesso_id`),
  ADD UNIQUE KEY `nivel_de_acesso_nome_UNIQUE` (`nivel_de_acesso_nome`);

--
-- Indexes for table `nomes_das_turmas`
--
ALTER TABLE `nomes_das_turmas`
  ADD PRIMARY KEY (`nome_da_turma_id`);

--
-- Indexes for table `nomes_dos_semestres`
--
ALTER TABLE `nomes_dos_semestres`
  ADD PRIMARY KEY (`nome_do_semestre_id`);

--
-- Indexes for table `notas`
--
ALTER TABLE `notas`
  ADD PRIMARY KEY (`nota_id`),
  ADD KEY `fk_notas_parametros_notas1_idx` (`nota_parametro_nota_id`),
  ADD KEY `fk_notas_disciplinas1_idx` (`nota_disciplina_id`),
  ADD KEY `fk_notas_professores1_idx` (`nota_professor_id`),
  ADD KEY `fk_notas_alunos1_idx` (`nota_aluno_id`),
  ADD KEY `fk_notas_cursos1_idx` (`nota_curso_id`);

--
-- Indexes for table `parametros_notas`
--
ALTER TABLE `parametros_notas`
  ADD PRIMARY KEY (`parametro_nota_id`);

--
-- Indexes for table `periodos`
--
ALTER TABLE `periodos`
  ADD PRIMARY KEY (`periodo_id`),
  ADD UNIQUE KEY `periodo_nome_UNIQUE` (`periodo_nome`);

--
-- Indexes for table `periodos_dos_semestres`
--
ALTER TABLE `periodos_dos_semestres`
  ADD PRIMARY KEY (`periodo_do_semestre_id`);

--
-- Indexes for table `pessoas`
--
ALTER TABLE `pessoas`
  ADD PRIMARY KEY (`pessoa_id`),
  ADD UNIQUE KEY `funcionario_registro_UNIQUE` (`pessoa_cpf`),
  ADD UNIQUE KEY `funcionario_email_UNIQUE` (`pessoa_email`);

--
-- Indexes for table `plano_aulas`
--
ALTER TABLE `plano_aulas`
  ADD PRIMARY KEY (`id_plano`),
  ADD KEY `fk_plano_professor` (`fk_plano_professor`),
  ADD KEY `fk_plano_disciplina` (`fk_plano_disciplina`);

--
-- Indexes for table `professores`
--
ALTER TABLE `professores`
  ADD PRIMARY KEY (`professor_id`),
  ADD UNIQUE KEY `professor_matricula_UNIQUE` (`professor_matricula`),
  ADD KEY `fk_professores_pessoas_idx` (`professor_pessoa_id`),
  ADD KEY `fk_professores_usuarios1_idx` (`professor_usuario_id`);

--
-- Indexes for table `projetos`
--
ALTER TABLE `projetos`
  ADD PRIMARY KEY (`projeto_id`),
  ADD KEY `fk_projetos_semestre1_idx` (`projeto_semestre_id`),
  ADD KEY `fk_projetos_anos1_idx` (`projeto_ano_id`);

--
-- Indexes for table `relatorios_avaliativos_diarios`
--
ALTER TABLE `relatorios_avaliativos_diarios`
  ADD PRIMARY KEY (`r_a_d_id`),
  ADD KEY `fk_relatorios_avaliativos_disciplinas1_idx` (`r_a_d__disciplina_id`),
  ADD KEY `fk_relatorios_avaliativos_professores1_idx` (`r_a_d__professor_id`),
  ADD KEY `fk_relatorios_avaliativos_monitores1_idx` (`r_a_d__monitor_id`);

--
-- Indexes for table `relatorios_avaliativos_mensais`
--
ALTER TABLE `relatorios_avaliativos_mensais`
  ADD PRIMARY KEY (`r_a_m_id`),
  ADD KEY `fk_relatorios_avaliativos_mensais_disciplinas1_idx` (`r_a_m_disciplina_id`),
  ADD KEY `fk_relatorios_avaliativos_mensais_professores1_idx` (`r_a_m_professor_id`),
  ADD KEY `fk_relatorios_avaliativos_mensais_monitores1_idx` (`r_a_m_monitor_id`);

--
-- Indexes for table `relatorios_diarios_dos_relatorios_mensais`
--
ALTER TABLE `relatorios_diarios_dos_relatorios_mensais`
  ADD PRIMARY KEY (`r_d_r_m_id`),
  ADD KEY `fk_relatorios_diarios_dos_relatorios_mensais_relatorios_ava_idx` (`r_d_r_m_r_a_m_id`),
  ADD KEY `fk_relatorios_diarios_dos_relatorios_mensais_relatorios_ava_idx1` (`r_d_r_m_r_a_d_id`);

--
-- Indexes for table `repositorios_de_ideias`
--
ALTER TABLE `repositorios_de_ideias`
  ADD PRIMARY KEY (`repositorio_de_ideia_id`),
  ADD KEY `fk_repositorio_de_ideias_usuarios1_idx` (`repositorio_de_ideia_usuario_id`);

--
-- Indexes for table `semestres`
--
ALTER TABLE `semestres`
  ADD PRIMARY KEY (`semestre_id`),
  ADD KEY `fk_semestres_anos1_idx` (`semestre_ano_id`),
  ADD KEY `fk_semestres_nome_dos_semestres1_idx` (`semestre_nome_do_semestre_id`),
  ADD KEY `fk_semestres_periodos_dos_semestres1_idx` (`semestre_periodo_do_semestre_id`);

--
-- Indexes for table `turmas`
--
ALTER TABLE `turmas`
  ADD PRIMARY KEY (`turma_id`),
  ADD KEY `fk_turma_semestre1_idx` (`turma_semestre_id`),
  ADD KEY `fk_turma_cursos1_idx` (`turma_curso_id`),
  ADD KEY `fk_turma_coordenadores1_idx` (`turma_coordenador_id`),
  ADD KEY `fk_turma_alunos1_idx` (`turma_aluno_id`),
  ADD KEY `fk_turmas_nomes_das_turmas1_idx` (`turma_nome_da_turma_id`);

--
-- Indexes for table `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`usuario_id`),
  ADD UNIQUE KEY `usuario_nome_UNIQUE` (`usuario_nome`);

--
-- Indexes for table `usuarios_e_niveis`
--
ALTER TABLE `usuarios_e_niveis`
  ADD PRIMARY KEY (`usuario_e_nivel_id`),
  ADD KEY `fk_usuarios_e_niveis_usuarios1_idx` (`usuario_e_nivel_usuario_id`),
  ADD KEY `fk_usuarios_e_niveis_niveis_de_acesso1_idx` (`usuario_e_nivel_nivel_de_acesso_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `alunos`
--
ALTER TABLE `alunos`
  MODIFY `aluno_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anexos`
--
ALTER TABLE `anexos`
  MODIFY `anexo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anexos_repositorios_de_ideias`
--
ALTER TABLE `anexos_repositorios_de_ideias`
  MODIFY `anexo_repositorio_de_ideia_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `anos`
--
ALTER TABLE `anos`
  MODIFY `ano_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `assessores_academicos`
--
ALTER TABLE `assessores_academicos`
  MODIFY `assessor_academico_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `atendimentos_dos_monitores`
--
ALTER TABLE `atendimentos_dos_monitores`
  MODIFY `a_m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `aulas`
--
ALTER TABLE `aulas`
  MODIFY `aula_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `campus`
--
ALTER TABLE `campus`
  MODIFY `campus_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `coordenadores`
--
ALTER TABLE `coordenadores`
  MODIFY `coordenador_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `cursos`
--
ALTER TABLE `cursos`
  MODIFY `curso_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `diario_aulas`
--
ALTER TABLE `diario_aulas`
  MODIFY `id_diario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `dias_da_semana`
--
ALTER TABLE `dias_da_semana`
  MODIFY `dia_da_semana_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `disciplinas`
--
ALTER TABLE `disciplinas`
  MODIFY `disciplina_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `disciplinas_dos_projetos`
--
ALTER TABLE `disciplinas_dos_projetos`
  MODIFY `disciplina_do_projeto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `eventos`
--
ALTER TABLE `eventos`
  MODIFY `evento_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `integrantes_dos_projetos`
--
ALTER TABLE `integrantes_dos_projetos`
  MODIFY `integrante_do_projeto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `listas`
--
ALTER TABLE `listas`
  MODIFY `lista_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `meses`
--
ALTER TABLE `meses`
  MODIFY `mes_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `monitores`
--
ALTER TABLE `monitores`
  MODIFY `monitor_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `niveis_de_acessos`
--
ALTER TABLE `niveis_de_acessos`
  MODIFY `nivel_de_acesso_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nomes_das_turmas`
--
ALTER TABLE `nomes_das_turmas`
  MODIFY `nome_da_turma_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nomes_dos_semestres`
--
ALTER TABLE `nomes_dos_semestres`
  MODIFY `nome_do_semestre_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `notas`
--
ALTER TABLE `notas`
  MODIFY `nota_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `parametros_notas`
--
ALTER TABLE `parametros_notas`
  MODIFY `parametro_nota_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `periodos`
--
ALTER TABLE `periodos`
  MODIFY `periodo_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `periodos_dos_semestres`
--
ALTER TABLE `periodos_dos_semestres`
  MODIFY `periodo_do_semestre_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `pessoas`
--
ALTER TABLE `pessoas`
  MODIFY `pessoa_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `plano_aulas`
--
ALTER TABLE `plano_aulas`
  MODIFY `id_plano` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `professores`
--
ALTER TABLE `professores`
  MODIFY `professor_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `projetos`
--
ALTER TABLE `projetos`
  MODIFY `projeto_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relatorios_avaliativos_diarios`
--
ALTER TABLE `relatorios_avaliativos_diarios`
  MODIFY `r_a_d_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relatorios_avaliativos_mensais`
--
ALTER TABLE `relatorios_avaliativos_mensais`
  MODIFY `r_a_m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `relatorios_diarios_dos_relatorios_mensais`
--
ALTER TABLE `relatorios_diarios_dos_relatorios_mensais`
  MODIFY `r_d_r_m_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `repositorios_de_ideias`
--
ALTER TABLE `repositorios_de_ideias`
  MODIFY `repositorio_de_ideia_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `semestres`
--
ALTER TABLE `semestres`
  MODIFY `semestre_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `turmas`
--
ALTER TABLE `turmas`
  MODIFY `turma_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `usuario_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `usuarios_e_niveis`
--
ALTER TABLE `usuarios_e_niveis`
  MODIFY `usuario_e_nivel_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `alunos`
--
ALTER TABLE `alunos`
  ADD CONSTRAINT `fk_alunos_pessoas1` FOREIGN KEY (`aluno_pessoa_id`) REFERENCES `pessoas` (`pessoa_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_alunos_usuarios1` FOREIGN KEY (`aluno_usuario_id`) REFERENCES `usuarios` (`usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `anexos`
--
ALTER TABLE `anexos`
  ADD CONSTRAINT `fk_anexos_projetos1` FOREIGN KEY (`anexo_projeto_id`) REFERENCES `projetos` (`projeto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `anexos_repositorios_de_ideias`
--
ALTER TABLE `anexos_repositorios_de_ideias`
  ADD CONSTRAINT `fk_anexos_repositorios_de_ideias_repositorios_de_ideias1` FOREIGN KEY (`anexo_repositorio_de_ideia_repositorio_de_ideia_id`) REFERENCES `repositorios_de_ideias` (`repositorio_de_ideia_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `assessores_academicos`
--
ALTER TABLE `assessores_academicos`
  ADD CONSTRAINT `fk_assessor_academico_pessoas1` FOREIGN KEY (`assessor_academico_pessoa_id`) REFERENCES `pessoas` (`pessoa_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_assessores_academicos_usuarios1` FOREIGN KEY (`assessor_academico_usuario_id`) REFERENCES `usuarios` (`usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `atendimentos_dos_monitores`
--
ALTER TABLE `atendimentos_dos_monitores`
  ADD CONSTRAINT `fk_atendimentos_dos_monitores_dias_da_semana1` FOREIGN KEY (`a_m_dia_da_semana_id`) REFERENCES `dias_da_semana` (`dia_da_semana_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_atendimentos_dos_monitores_monitores1` FOREIGN KEY (`a_m_monitor_id`) REFERENCES `monitores` (`monitor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `aulas`
--
ALTER TABLE `aulas`
  ADD CONSTRAINT `fk_aula_disciplinas1` FOREIGN KEY (`aula_disciplina_id`) REFERENCES `disciplinas` (`disciplina_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aula_periodos1` FOREIGN KEY (`aula_periodo_id`) REFERENCES `periodos` (`periodo_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aula_professores1` FOREIGN KEY (`aula_professor_id`) REFERENCES `professores` (`professor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aula_semana1` FOREIGN KEY (`aula_semana_id`) REFERENCES `dias_da_semana` (`dia_da_semana_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_aula_turma1` FOREIGN KEY (`aula_turma_id`) REFERENCES `turmas` (`turma_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `coordenadores`
--
ALTER TABLE `coordenadores`
  ADD CONSTRAINT `fk_coordenadores_pessoas1` FOREIGN KEY (`coordenador_pessoa_id`) REFERENCES `pessoas` (`pessoa_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_coordenadores_usuarios1` FOREIGN KEY (`coordenador_usuario_id`) REFERENCES `usuarios` (`usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `diario_aulas`
--
ALTER TABLE `diario_aulas`
  ADD CONSTRAINT `diario_aulas_ibfk_1` FOREIGN KEY (`fk_diario_professor`) REFERENCES `professores` (`professor_id`),
  ADD CONSTRAINT `diario_aulas_ibfk_2` FOREIGN KEY (`fk_diario_disciplina`) REFERENCES `disciplinas` (`disciplina_id`),
  ADD CONSTRAINT `diario_aulas_ibfk_3` FOREIGN KEY (`fk_plano_diario`) REFERENCES `plano_aulas` (`id_plano`);

--
-- Constraints for table `disciplinas_dos_projetos`
--
ALTER TABLE `disciplinas_dos_projetos`
  ADD CONSTRAINT `fk_disciplinas_dos_projetos_disciplinas1` FOREIGN KEY (`disciplina_do_projeto_disciplina_id`) REFERENCES `disciplinas` (`disciplina_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_disciplinas_dos_projetos_projetos1` FOREIGN KEY (`disciplina_do_projeto_projeto_id`) REFERENCES `projetos` (`projeto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `integrantes_dos_projetos`
--
ALTER TABLE `integrantes_dos_projetos`
  ADD CONSTRAINT `fk_integrantes_e_disciplinas_dos_projetos_alunos1` FOREIGN KEY (`integrante_do_projeto_aluno_id`) REFERENCES `alunos` (`aluno_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_integrantes_e_disciplinas_dos_projetos_projetos1` FOREIGN KEY (`integrante_do_projeto_projeto_id`) REFERENCES `projetos` (`projeto_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `listas`
--
ALTER TABLE `listas`
  ADD CONSTRAINT `fk_lista_alunos1` FOREIGN KEY (`lista_aluno_id`) REFERENCES `alunos` (`aluno_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_lista_aula1` FOREIGN KEY (`lista_aula_id`) REFERENCES `aulas` (`aula_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `monitores`
--
ALTER TABLE `monitores`
  ADD CONSTRAINT `fk_monitores_alunos1` FOREIGN KEY (`monitor_aluno_id`) REFERENCES `alunos` (`aluno_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_monitores_anos1` FOREIGN KEY (`monitor_ano_id`) REFERENCES `anos` (`ano_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_monitores_campus1` FOREIGN KEY (`monitor_campus_id`) REFERENCES `campus` (`campus_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_monitores_cursos1` FOREIGN KEY (`monitor_curso_id`) REFERENCES `cursos` (`curso_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_monitores_disciplinas1` FOREIGN KEY (`monitor_disciplina_id`) REFERENCES `disciplinas` (`disciplina_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_monitores_meses1` FOREIGN KEY (`monitor_mes_id`) REFERENCES `meses` (`mes_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_monitores_semestres1` FOREIGN KEY (`monitor_semestre_id`) REFERENCES `semestres` (`semestre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `notas`
--
ALTER TABLE `notas`
  ADD CONSTRAINT `fk_notas_alunos1` FOREIGN KEY (`nota_aluno_id`) REFERENCES `alunos` (`aluno_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_notas_cursos1` FOREIGN KEY (`nota_curso_id`) REFERENCES `cursos` (`curso_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_notas_disciplinas1` FOREIGN KEY (`nota_disciplina_id`) REFERENCES `disciplinas` (`disciplina_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_notas_parametros_notas1` FOREIGN KEY (`nota_parametro_nota_id`) REFERENCES `parametros_notas` (`parametro_nota_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_notas_professores1` FOREIGN KEY (`nota_professor_id`) REFERENCES `professores` (`professor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `plano_aulas`
--
ALTER TABLE `plano_aulas`
  ADD CONSTRAINT `plano_aulas_ibfk_1` FOREIGN KEY (`fk_plano_professor`) REFERENCES `professores` (`professor_id`),
  ADD CONSTRAINT `plano_aulas_ibfk_2` FOREIGN KEY (`fk_plano_disciplina`) REFERENCES `disciplinas` (`disciplina_id`);

--
-- Constraints for table `professores`
--
ALTER TABLE `professores`
  ADD CONSTRAINT `fk_professores_pessoas` FOREIGN KEY (`professor_pessoa_id`) REFERENCES `pessoas` (`pessoa_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_professores_usuarios1` FOREIGN KEY (`professor_usuario_id`) REFERENCES `usuarios` (`usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `projetos`
--
ALTER TABLE `projetos`
  ADD CONSTRAINT `fk_projetos_anos1` FOREIGN KEY (`projeto_ano_id`) REFERENCES `anos` (`ano_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_projetos_semestre1` FOREIGN KEY (`projeto_semestre_id`) REFERENCES `semestres` (`semestre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `relatorios_avaliativos_diarios`
--
ALTER TABLE `relatorios_avaliativos_diarios`
  ADD CONSTRAINT `fk_relatorios_avaliativos_disciplinas1` FOREIGN KEY (`r_a_d__disciplina_id`) REFERENCES `disciplinas` (`disciplina_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_relatorios_avaliativos_monitores1` FOREIGN KEY (`r_a_d__monitor_id`) REFERENCES `monitores` (`monitor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_relatorios_avaliativos_professores1` FOREIGN KEY (`r_a_d__professor_id`) REFERENCES `professores` (`professor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `relatorios_avaliativos_mensais`
--
ALTER TABLE `relatorios_avaliativos_mensais`
  ADD CONSTRAINT `fk_relatorios_avaliativos_mensais_disciplinas1` FOREIGN KEY (`r_a_m_disciplina_id`) REFERENCES `disciplinas` (`disciplina_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_relatorios_avaliativos_mensais_monitores1` FOREIGN KEY (`r_a_m_monitor_id`) REFERENCES `monitores` (`monitor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_relatorios_avaliativos_mensais_professores1` FOREIGN KEY (`r_a_m_professor_id`) REFERENCES `professores` (`professor_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `relatorios_diarios_dos_relatorios_mensais`
--
ALTER TABLE `relatorios_diarios_dos_relatorios_mensais`
  ADD CONSTRAINT `fk_relatorios_diarios_dos_relatorios_mensais_relatorios_avali1` FOREIGN KEY (`r_d_r_m_r_a_m_id`) REFERENCES `relatorios_avaliativos_mensais` (`r_a_m_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_relatorios_diarios_dos_relatorios_mensais_relatorios_avali2` FOREIGN KEY (`r_d_r_m_r_a_d_id`) REFERENCES `relatorios_avaliativos_diarios` (`r_a_d_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `repositorios_de_ideias`
--
ALTER TABLE `repositorios_de_ideias`
  ADD CONSTRAINT `fk_repositorio_de_ideias_usuarios1` FOREIGN KEY (`repositorio_de_ideia_usuario_id`) REFERENCES `usuarios` (`usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `semestres`
--
ALTER TABLE `semestres`
  ADD CONSTRAINT `fk_semestres_anos1` FOREIGN KEY (`semestre_ano_id`) REFERENCES `anos` (`ano_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_semestres_nome_dos_semestres1` FOREIGN KEY (`semestre_nome_do_semestre_id`) REFERENCES `nomes_dos_semestres` (`nome_do_semestre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_semestres_periodos_dos_semestres1` FOREIGN KEY (`semestre_periodo_do_semestre_id`) REFERENCES `periodos_dos_semestres` (`periodo_do_semestre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `turmas`
--
ALTER TABLE `turmas`
  ADD CONSTRAINT `fk_turma_alunos1` FOREIGN KEY (`turma_aluno_id`) REFERENCES `alunos` (`aluno_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_turma_coordenadores1` FOREIGN KEY (`turma_coordenador_id`) REFERENCES `coordenadores` (`coordenador_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_turma_cursos1` FOREIGN KEY (`turma_curso_id`) REFERENCES `cursos` (`curso_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_turma_semestre1` FOREIGN KEY (`turma_semestre_id`) REFERENCES `semestres` (`semestre_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_turmas_nomes_das_turmas1` FOREIGN KEY (`turma_nome_da_turma_id`) REFERENCES `nomes_das_turmas` (`nome_da_turma_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `usuarios_e_niveis`
--
ALTER TABLE `usuarios_e_niveis`
  ADD CONSTRAINT `fk_usuarios_e_niveis_niveis_de_acesso1` FOREIGN KEY (`usuario_e_nivel_nivel_de_acesso_id`) REFERENCES `niveis_de_acessos` (`nivel_de_acesso_id`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_usuarios_e_niveis_usuarios1` FOREIGN KEY (`usuario_e_nivel_usuario_id`) REFERENCES `usuarios` (`usuario_id`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
