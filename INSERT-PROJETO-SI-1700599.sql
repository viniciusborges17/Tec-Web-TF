/* Victor Camilo - 1700608

Jheimisson Oliveira - 1700786

Vitor Bella Lorente - 1700804

Renato Barbosa - 1700808

Vinicius Borges Oliveira - 1700599 */

USE ETAPA3
GO

INSERT INTO DISCIPLINA (nome,carga_horaria,teoria,pratica,ementa,competencias,habilidades,conteudo,bibliografia_basica,bibliografia_complementar) VALUES
('LINGUAGEM DE PROGRAMAÇÃO' ,80,5.5,5.5,'aaa','aaa','aaaa','sss','aa','aa'),
('LOGICA DE PROGRAMAÇÃO',80,2.5,8.5,'ementa','competencias','habilidades','conteudo','bb','bc'),
('BANCO DE DADOS III ' ,72,4.2,3.0,'ementa','competencias','habilidades','conteudo','bb','bc'),
('ENGENHARIA DE SOFTWARE',80,7.2,2.8,'ementa','competencias','habilidades','conteudo','bb','bc'),
('LIBRAS',40,5.2,7.0,'ementa','competencias','habilidades','conteudo','bb','bc'),
('LINGUAGEM SQL',40,5.2,7.0,'ementa','competencias','habilidades','conteudo','bb','bc'),
('MATÉMATICA',40,5.2,7.0,'ementa','competencias','habilidades','conteudo','bb','bc');

INSERT INTO DISCIPLINA_OFERTADA (nome_disciplina,ano,semestre) VALUES
('LOGICA DE PROGRAMAÇÃO',2016,'1'),
('LINGUAGEM DE PROGRAMAÇÃO',2017,'3'),
('BANCO DE DADOS III',2018,'2'),
('LIBRAS',2015,'4'),
('ENGENHARIA DE SOFTWARE',2019,'5'),
('LINGUAGEM SQL' ,2014,'6'),
('MATÉMATICA',2020,'7') ;
GO

INSERT INTO ALUNO (ra,nome,email,celular,sigla_curso) values 
(1700599,'Vinicius Borges Oliveira','viniciusborges@gmail.com','1198747212','BD'),
(1700608,'Victor Camilo','vicamillo@gmail.com','11980842034','SI'),
(1700804,'Vitor Bella Lorente','bellalorente@gmail.com','11962343040','SI'),
(1700808,'Renato Colodro ','colodro@gmail.com','11967021040','SI'),
(1700786,'Jheimisson Oliveira Sampaio','jheimisson@gmail.com','11952343040','SI'),
(1700806,'Gabriel Oliveira','gaboliveira@gmail.com','11952343320','SI');
GO
INSERT INTO PROFESSOR (ra,apelido,nome,email,celular) VALUES
(170010,'yuri','Yuri Oliveria','yuriee@gmail.com','11985740020'),
(170011,'takai','Osavaldo Takai','otakai@impacta.com','11970204050'),
(170012,'leo','Leonardo Camacho','camacho@gmail.com','11985744030'),
(170013,'vini','Vinicius Ferreira','ferreira@impacta.com','11970203015'),
(170014,'gabriel','Gabriel Oliveria','gaboli@gmail.com','11960336621'),
(170015,'paulo','Paulo Torres','torres@impacta.com','119902040');
GO

INSERT INTO TURMA (nome_disciplina,ano_ofertado,semestre_ofertado,id_turma,ra_professor) VALUES 
('LOGICA DE PROGRAMAÇÃO',2017,'1','2',170013),
('LINGUAGEM DE PROGRAMAÇÃO',2017,'1','1',170011),
('LINGUAGEM SQL' ,2017,'2','7',170010),
('MATÉMATICA',2017,'2','6',170010),
('BANCO DE DADOS III ',2018,'1','3',170011),
('LIBRAS',2017,'2','4',170010),
('ENGENHARIA DE SOFTWARE',2017,'2','5',170010);
GO

INSERT INTO MATRICULA (ra_aluno,nome_disciplina,ano_ofertado,semestre_ofertado,id_turma)VALUES
(1700599,'ENGENHARIA DE SOFTWARE',2017,'2','5'),
(1700599,'LINGUAGEM SQL' ,2017,'2','7'),
(1700599,'ENGENHARIA DE SOFTWARE',2017,'2','5'),
(1700608,'ENGENHARIA DE SOFTWARE',2017,'2','5'),
(1700808,'LINGUAGEM SQL',2017,'2','7'),
(1700804,'LIBRAS',2017,'2','4'),
(1700808,'LINGUAGEM DE PROGRAMAÇÃO ',2017,'1','1'),
(1700786,'LOGICA DE PROGRAMAÇÃO',2017,'2','2'),
(1700806,'BANCO DE DADOS III ',2018,'2','3');


GO
INSERT INTO QUESTAO (nome_disciplina,ano_ofertado,semestre_ofertado,id_turma,numero,data_limite_entrega,descricao,data) VALUES
('LOGICA DE PROGRAMAÇÃO',2017,'1','2',1,'20/12/2016','aa','20/11/2016'),
('LINGUAGEM DE PROGRAMAÇÃO ',2017,'1','2',2,'20/12/2017','aa','20/11/2017'),
('LIBRAS',2017,'2','4',3,'20/12/2015','aa','20/11/2015'),
('ENGENHARIA DE SOFTWARE',2017,'2','5',4,'20/12/2019','aaa','10/11/2019'),
('BANCO DE DADOS III',2018,'1','3',5,'20/12/2018','aaa','20/11/2018');

GO
INSERT INTO ARQUIVO_QUESTAO (nome_disciplina,ano_ofertado,semestre_ofertado,id_turma,numero_questao,arquivo) VALUES
('LOGICA DE PROGRAMAÇÃO',2017,'1','2',1,'a'),
('LINGUAGEM DE PROGRAMAÇÃO ',2017,'1','2',2,'aa'),
('LIBRAS',2017,'2','4',3,'aaaa'),
('ENGENHARIA DE SOFTWARE',2017,'2','5',4,'aaa'),
('BANCO DE DADOS III',2018,'1','3',5,'aaaaa');

GO

INSERT INTO RESPOSTA (nome_disciplina,ano_ofertado,semestre_ofertado,id_turma,numero_questao,ra_aluno,data_avaliacao,nota,avaliacao,descricao,data_de_envio) VALUES
('LOGICA DE PROGRAMAÇÃO',2017,'1','2',1,1700786,'20/11/2016',6,'aaaaaa','aaaaaaaaa','20/12/2016'),
('LINGUAGEM DE PROGRAMAÇÃO ',2017,'1','2',2,1700808,'20/11/2017',8,'aaaaa','aaaas','20/12/2017'),
('LIBRAS',2017,'2','4',3,1700804,'20/11/2015',8,'aaaa','asss','20/12/2015'),
('ENGENHARIA DE SOFTWARE',2017,'2','5',4,1700599,'10/11/2019',10,'aaa','aaaasd','20/12/2019'),
('BANCO DE DADOS III ',2018,'1','3',5,1700806,'20/11/2018',10,'aa','asdd','20/12/2018');
GO

INSERT INTO ARQUIVO_RESPOSTA (nome_disciplina,ano_ofertado,semestre_ofertado,id_turma,numero_questao,ra_aluno,arquivo) VALUES
('LOGICA DE PROGRAMAÇÃO',2017,'1','2',1,1700786,'aaaaaa'),
('LINGUAGEM DE PROGRAMAÇÃO ',2017,'1','2',2,1700808,'aaaaa'),
('LIBRAS',2017,'1','4',3,1700804,'aaaa'),
('ENGENHARIA DE SOFTWARE',2017,'2','5',4,1700599,'aaa'),
('BANCO DE DADOS III',2018,'1','3',5,1700806,'aa');
GO


INSERT INTO CURSO (sigla,nome) VALUES 
('SI','Sistemas de Informação '),
('ADS','Análise e Desenvolvimento de Sistemas'),
('GTI','Gestão da Tecnologia da Informação'),
('CI','Ciência da Informação'),
('EGC','Engenharia de Computação'),
('BD','Banco de Dados III');
GO
INSERT INTO CURSO_TURMA (sigla_curso,nome_disciplina,ano_ofertado,semestre_ofertado,id_turma) VALUES
('SI','LOGICA DE PROGRAMAÇÃO',2017,'1','2'),
('SI','LINGUAGEM DE PROGRAMAÇÃO ',2017,'1','2'),
('SI','LIBRAS',2017,'2','4'),
('SI','ENGENHARIA DE SOFTWARE',2017,'2','5'),
('SI','BANCO DE DADOS III ',2018,'1','3'),
('SI','LINGUAGEM SQL' ,2017,'2','7'),
('SI','MATÉMATICA',2017,'2','6');
GO

INSERT INTO GRADE_CURRICULAR (sigla_curso,ano,semestre) VALUES
('SI','2017','8'),
('ADS','2016','6'),
('GTI','2015','1'),
('CI','2019','2'),
('EGC','2020','7'),
('BD','2018','5');


GO

INSERT INTO PERIODO (sigla_curso,ano_grade,semestre_grade,numero) VALUES
('SI','2017','8',1),
('ADS','2017','6',2),
('GTI','2017','1',3),
('CI','2017','2',4),
('EGC','2017','7',5),
('BD','2018','5',6);
GO 
INSERT INTO PERIODO_DISCIPLINA(sigla_curso,ano_grade,semestre_grade,numero_periodo,nome_disciplina) VALUES
('SI','2017','1',1,'LOGICA DE PROGRAMAÇÃO'),
('SI','2017','1',1,'LINGUAGEM DE PROGRAMAÇÃO'),
('SI','2017','2',2,'LIBRAS'),
('SI','2017','2',2,'ENGENHARIA DE SOFTWARE'),
('BD','2018','1',1,'BANCO DE DADOS III');







