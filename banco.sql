CREATE TABLE plano_aulas (
	id_plano int AUTO_INCREMENT PRIMARY KEY,
    tema varchar(50),
    conteudo varchar(200),
    C_H int,
    objetivo varchar (200),
    metodologia varchar (100),
    criado_em date,
    atualizado_em date,
    fk_plano_disciplina int,
    fk_plano_professor int,

    constraint foreign KEY (fk_plano_professor) references professores(professor_id),
    constraint foreign KEY (fk_plano_disciplina) references disciplinas(disciplina_id)

);

CREATE TABLE diario_aulas (
	id_diario int AUTO_INCREMENT PRIMARY KEY,
    conteudo varchar(200),
    status int,
    criado_em date,
    atualizado_em date, int,
    fk_diario_disciplina int,
    fk_diario_professor int,

       constraint foreign KEY (fk_diario_professor) references professores(professor_id),
    constraint foreign KEY (fk_diario_disciplina) references disciplinas(disciplina_id)

);


CREATE VIEW view_plano_aulas AS
SELECT * FROM diario_aulas a
LEFT JOIN plano_aulas on a.