/* Victor Camilo - 1700608

Jheimisson Oliveira - 1700786

Vitor Bella Lorente - 1700804

Renato Barbosa - 1700808

Vinicius Borges Oliveira - 1700599 */

CREATE DATABASE TESTE2
GO
USE TESTE2

CREATE TABLE DISCIPLINA (
id INT IDENTITY(1,1),
nome VARCHAR(240) NOT NULL,
carga_horaria TINYINT NOT NULL,
teoria DECIMAL(3) NOT NULL,
pratica DECIMAL(3) NOT NULL,
ementa TEXT NOT NULL,
competencias TEXT NOT NULL,
habilidades TEXT,
conteudo TEXT NOT NULL,
bibliografia_basica TEXT,
bibliografia_complementar TEXT,
CONSTRAINT pk_id_disciplina PRIMARY KEY (id),
CONSTRAINT un_nome_disciplina UNIQUE (nome));
GO

CREATE TABLE DISCIPLINA_OFERTADA(
id INT  IDENTITY(1,1),
nome_disciplina VARCHAR(240) NOT NULL,
ano SMALLINT NOT NULL,
semestre CHAR(1) NOT NULL,
CONSTRAINT pk_id_ofertada PRIMARY KEY(id),
CONSTRAINT un_nome_ofertada UNIQUE (nome_disciplina),
CONSTRAINT un_ano UNIQUE (ano),
CONSTRAINT un_semestre UNIQUE(semestre),
CONSTRAINT fk_disciplina FOREIGN KEY (nome_disciplina)
REFERENCES DISCIPLINA(nome));



GO

CREATE TABLE ALUNO (
id INT IDENTITY(1,1),
ra INT NOT NULL ,
nome VARCHAR(120)NOT NULL,
email VARCHAR(80)NOT NULL,
celular CHAR(11),
sigla_curso CHAR(2) NOT NULL,
CONSTRAINT pk_aluno PRIMARY KEY (id),
CONSTRAINT un_aluno UNIQUE (ra)
);

GO
CREATE TABLE PROFESSOR (
id INT IDENTITY(1,1) ,
ra INT NOT NULL,
apelido VARCHAR(30) NOT NULL,
nome VARCHAR(120) NOT NULL,
email VARCHAR(80) NOT NULL,
celular CHAR(11) ,
CONSTRAINT pk_professor PRIMARY KEY (id) ,
CONSTRAINT un_ra UNIQUE (ra),
CONSTRAINT un_apelido UNIQUE (apelido));
	
GO


CREATE TABLE TURMA (
nome_disciplina VARCHAR(240) NOT NULL,
ano_ofertado SMALLINT NOT NULL,
semestre_ofertado CHAR(1) NOT NULL,
id_turma CHAR(1) NOT NULL,
id INT IDENTITY(1,1),
ra_professor INT NOT NULL,
CONSTRAINT pk_turma PRIMARY KEY (id),
CONSTRAINT un_id UNIQUE (id_turma),

CONSTRAINT fk_nome_disciplina FOREIGN KEY (nome_disciplina) 
REFERENCES DISCIPLINA_OFERTADA(nome_disciplina),
CONSTRAINT fk_ano_ofertado FOREIGN KEY (ano_ofertado)
REFERENCES DISCIPLINA_OFERTADA(ano),
CONSTRAINT fk_semestre_ofertada FOREIGN KEY (semestre_ofertado)
REFERENCES DISCIPLINA_OFERTADA(semestre),
CONSTRAINT fk_professor_turma FOREIGN KEY(ra_professor)
REFERENCES PROFESSOR (ra));

GO

CREATE TABLE MATRICULA(
id INT IDENTITY(1,1),
ra_aluno INT NOT NULL,
nome_disciplina VARCHAR(240) NOT NULL,
ano_ofertado SMALLINT NOT NULL,
semestre_ofertado CHAR(1) NOT NULL,
id_turma CHAR(1) NOT NULL,
CONSTRAINT pk_matricula PRIMARY KEY (id),
CONSTRAINT fk_ra_matricula FOREIGN KEY (ra_aluno)
REFERENCES ALUNO(ra),
CONSTRAINT fk_nome_matricula FOREIGN KEY (nome_disciplina)
REFERENCES DISCIPLINA_OFERTADA(nome_disciplina),
CONSTRAINT fk_ano_matricula FOREIGN KEY (ano_ofertado)
REFERENCES DISCIPLINA_OFERTADA(ano),
CONSTRAINT fk_semestre_matricula FOREIGN KEY (semestre_ofertado)
REFERENCES DISCIPLINA_OFERTADA(semestre),
CONSTRAINT fk_id_matricula FOREIGN KEY (id_turma)
REFERENCES TURMA(id_turma));


GO

CREATE TABLE QUESTAO(
id INT IDENTITY(1,1),
nome_disciplina VARCHAR(240) NOT NULL,
ano_ofertado SMALLINT NOT NULL,
semestre_ofertado CHAR(1) NOT NULL,
id_turma CHAR(1) NOT NULL,
numero INT NOT NULL,
data_limite_entrega DATE NOT NULL,
descricao TEXT ,
data DATE NOT NULL,
CONSTRAINT pk_questao PRIMARY KEY (id),
CONSTRAINT fk_nome_questao FOREIGN KEY (nome_disciplina)
REFERENCES DISCIPLINA_OFERTADA(nome_disciplina),
CONSTRAINT fk_ano_questao FOREIGN KEY (ano_ofertado)
REFERENCES DISCIPLINA_OFERTADA(ano),
CONSTRAINT fk_semestre_questao FOREIGN KEY (semestre_ofertado)
REFERENCES DISCIPLINA_OFERTADA(semestre),
CONSTRAINT fk_ano_id FOREIGN KEY (id_turma)
REFERENCES TURMA(id_turma),
CONSTRAINT un_numero UNIQUE (numero));

GO

CREATE TABLE ARQUIVO_QUESTAO (
id	INT IDENTITY(1,1),
nome_disciplina VARCHAR(240) NOT NULL,
ano_ofertado SMALLINT NOT NULL,
semestre_ofertado CHAR(1) NOT NULL,
id_turma CHAR(1) NOT NULL,
numero_questao INT NOT NULL,
arquivo VARCHAR(500) NOT NULL,
CONSTRAINT pk_arquivo PRIMARY KEY (id),
CONSTRAINT fk_nome_arquivo FOREIGN KEY (nome_disciplina)
REFERENCES DISCIPLINA_OFERTADA(nome_disciplina),
CONSTRAINT fk_ano_arquivo FOREIGN KEY (ano_ofertado)
REFERENCES DISCIPLINA_OFERTADA(ano),
CONSTRAINT fk_semestre_arquivo FOREIGN KEY (semestre_ofertado)
REFERENCES DISCIPLINA_OFERTADA(semestre),
CONSTRAINT fk_id_arquivo FOREIGN KEY (id_turma)
REFERENCES TURMA(id_turma),
CONSTRAINT fk_questao_arquivo FOREIGN KEY (numero_questao)
REFERENCES QUESTAO(numero),
CONSTRAINT un_arquivo UNIQUE (arquivo));

GO

CREATE TABLE RESPOSTA (
id	INT IDENTITY(1,1),
nome_disciplina VARCHAR(240) NOT NULL,
ano_ofertado SMALLINT NOT NULL,
semestre_ofertado CHAR(1) NOT NULL,
id_turma CHAR(1) NOT NULL,
numero_questao INT NOT NULL,
ra_aluno INT NOT NULL,
data_avaliacao DATE NOT NULL,
nota DECIMAL(4,2) ,
avaliacao TEXT NOT NULL,
descricao TEXT NOT NULL,
data_de_envio DATE NOT NULL,
CONSTRAINT pk_resposta PRIMARY KEY (id),
CONSTRAINT fk_nome_resposta FOREIGN KEY (nome_disciplina)
REFERENCES DISCIPLINA_OFERTADA(nome_disciplina),
CONSTRAINT fk_ano_resposta FOREIGN KEY (ano_ofertado)
REFERENCES DISCIPLINA_OFERTADA(ano),
CONSTRAINT fk_semestre_resposta FOREIGN KEY (semestre_ofertado)
REFERENCES DISCIPLINA_OFERTADA(semestre),
CONSTRAINT fk_id_resposta FOREIGN KEY (id_turma)
REFERENCES TURMA(id_turma),
CONSTRAINT fk_questao_resposta FOREIGN KEY (numero_questao)
REFERENCES QUESTAO(numero),
CONSTRAINT un_resposta UNIQUE (ra_aluno));

GO

CREATE TABLE ARQUIVO_RESPOSTA (
id	INT IDENTITY(1,1),
nome_disciplina VARCHAR(240) NOT NULL,
ano_ofertado SMALLINT NOT NULL,
semestre_ofertado CHAR(1) NOT NULL,
id_turma CHAR(1) NOT NULL,
numero_questao INT NOT NULL,
ra_aluno INT NOT NULL,
arquivo VARCHAR(500) NOT NULL,
CONSTRAINT pk_arquivo_resposta PRIMARY KEY (id),
CONSTRAINT fk_nome_arquivo_resposta FOREIGN KEY (nome_disciplina)
REFERENCES DISCIPLINA_OFERTADA(nome_disciplina),
CONSTRAINT fk_ano_arquivo_resposta FOREIGN KEY (ano_ofertado)
REFERENCES DISCIPLINA_OFERTADA(ano),
CONSTRAINT fk_semestre_arquivo_resposta FOREIGN KEY (semestre_ofertado)
REFERENCES DISCIPLINA_OFERTADA(semestre),
CONSTRAINT fk_id_arquivo_resposta FOREIGN KEY (id_turma)
REFERENCES TURMA(id_turma),
CONSTRAINT fk_questao_arquivo_respota FOREIGN KEY (numero_questao)
REFERENCES QUESTAO(numero),
CONSTRAINT fk_ra_arquivo_respota FOREIGN KEY (ra_aluno)
REFERENCES RESPOSTA(ra_aluno),
CONSTRAINT un_arquivo_respota UNIQUE (arquivo));

GO

CREATE TABLE CURSO(
id INT IDENTITY(1,1),
sigla VARCHAR(5) NOT NULL,
nome VARCHAR(50) NOT NULL,
CONSTRAINT pk_curso PRIMARY KEY (id),
CONSTRAINT un_curso UNIQUE (sigla),
CONSTRAINT un_curso_nome UNIQUE (nome));

GO

CREATE TABLE CURSO_TURMA (
id INT IDENTITY(1,1),
sigla_curso VARCHAR(5) NOT NULL,
nome_disciplina VARCHAR(240) NOT NULL,
ano_ofertado SMALLINT NOT NULL,
semestre_ofertado CHAR(1) NOT NULL,
id_turma CHAR(1),
CONSTRAINT pk_curso_turma PRIMARY KEY (id),
CONSTRAINT fk_sigla FOREIGN KEY (sigla_curso)
REFERENCES CURSO(sigla),
CONSTRAINT fk_nome_curso_turma FOREIGN KEY (nome_disciplina)
REFERENCES DISCIPLINA_OFERTADA(nome_disciplina),
CONSTRAINT fk_ano_curso_turma FOREIGN KEY (ano_ofertado)
REFERENCES DISCIPLINA_OFERTADA(ano),
CONSTRAINT fk_semestre_curso_turma FOREIGN KEY (semestre_ofertado)
REFERENCES DISCIPLINA_OFERTADA(semestre),
CONSTRAINT fk_id_curso_turma FOREIGN KEY (id_turma)
REFERENCES TURMA(id_turma));

GO

CREATE TABLE GRADE_CURRICULAR (
id INT IDENTITY(1,1),
sigla_curso VARCHAR(5) NOT NULL,
ano SMALLINT NOT NULL,
semestre CHAR(1) NOT NULL,
CONSTRAINT pk_grade PRIMARY KEY(id),
CONSTRAINT fk_sigla_grade FOREIGN KEY (sigla_curso)
REFERENCES CURSO (sigla),
CONSTRAINT un_ano_grade UNIQUE (ano),
CONSTRAINT un_semestre_grade UNIQUE (semestre));

GO

CREATE TABLE PERIODO(
id INT IDENTITY(1,1),
sigla_curso  VARCHAR(5),
ano_grade SMALLINT NOT NULL,
semestre_grade CHAR(1) NOT NULL,
numero TINYINT NOT NULL,
CONSTRAINT pk_periodo PRIMARY KEY (id),
CONSTRAINT fk_sigla_periodo FOREIGN KEY (sigla_curso)
REFERENCES CURSO(sigla),
CONSTRAINT fk_ano_periodo FOREIGN KEY (ano_grade)
REFERENCES GRADE_CURRICULAR(ano),
CONSTRAINT fk_semestre_periodo FOREIGN KEY (semestre_grade)
REFERENCES GRADE_CURRICULAR(semestre),
CONSTRAINT un_periodo UNIQUE (numero));

GO

CREATE TABLE PERIODO_DISCIPLINA (
id INT IDENTITY(1,1),
sigla_curso  VARCHAR(5),
ano_grade SMALLINT NOT NULL,
semestre_grade CHAR(1) NOT NULL,
numero_periodo TINYINT NOT NULL,
nome_disciplina VARCHAR(240) NOT NULL,
CONSTRAINT pk_periodo_disc PRIMARY KEY (id),
CONSTRAINT fk_sigla_periodo_disc FOREIGN KEY (sigla_curso)
REFERENCES CURSO(sigla),
CONSTRAINT fk_ano_periodo_disc FOREIGN KEY (ano_grade)
REFERENCES GRADE_CURRICULAR(ano),
CONSTRAINT fk_semestre_periodo_disc FOREIGN KEY (semestre_grade)
REFERENCES GRADE_CURRICULAR(semestre),
CONSTRAINT fk_numero_periodo_disc FOREIGN KEY (numero_periodo)
REFERENCES PERIODO(numero),
CONSTRAINT fk_nome_periodo FOREIGN KEY (nome_disciplina)
REFERENCES DISCIPLINA(nome));





