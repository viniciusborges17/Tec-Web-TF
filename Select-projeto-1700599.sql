/* Victor Camilo - 1700608

Jheimisson Oliveira - 1700786

Vitor Bella Lorente - 1700804

Renato Barbosa - 1700808

Vinicius Borges Oliveira - 1700599 */

/*1*/
SELECT nome AS 'Nome ',email AS 'Email',ra AS 'RA'
FROM ALUNO WHERE sigla_curso = 'SI'

/*2*/
SELECT nome_disciplina AS 'Nome da Disciplina'
FROM CURSO_TURMA
WHERE ano_ofertado = 2018  AND  semestre_ofertado = '1' AND sigla_curso = 'SI'




/*4*/
SELECT nome_disciplina  AS 'Nome da Disciplina',COUNT(id_turma) AS 'TOTAL DE TURMAS'
FROM MATRICULA
WHERE semestre_ofertado = '2' and ano_ofertado = 2017
GROUP BY nome_disciplina
ORDER BY COUNT(id_turma) DESC





/*6*/
SELECT  numero_questao AS 'Numero da Questão',CONVERT(varchar ,descricao) AS'Descrição',nome AS 'Nome do aluno',ra_aluno AS 'RA',data_de_envio AS 'Data de Envio'
FROM RESPOSTA INNER JOIN ALUNO  ON ALUNO.ra = RESPOSTA.ra_aluno
GROUP BY nome,numero_questao,ra_aluno,data_de_envio,CONVERT(VARCHAR ,descricao)









/* 8 */
SELECT sigla_curso AS 'NOME DO CURSO', count(nome)  AS 'TOTAL DE ALUNO'
from ALUNO
Group by sigla_curso
order by sigla_curso desc





