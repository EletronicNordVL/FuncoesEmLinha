CREATE DATABASE FaculdadeMonny;
USE FaculdadeMonny;

/* A) Liste todos os alunos em letras maiúsculas, mostrando também o tamanho do nome. */
SELECT UPPER(Nome) AS Nome, LENGTH(Nome) AS TamanhoNome
FROM Aluno;

/* B) Liste cada aluno, a disciplina cursada e a média aritmética das notas (nota1 e nota2). Apresente
o resultado arredondado com 2 casas decimais. */
SELECT a.Nome AS Aluno, d.Nome AS Disciplina,
       ROUND((c.Nota1 + c.Nota2)/2, 2) AS Media
FROM Aluno a
JOIN Curso c ON a.Matricula = c.Matricula
JOIN Disciplina d ON c.CodigoDisciplina = d.CodigoDisciplina;

/* C) Adicione uma coluna na consulta anterior que mostre a data e hora da execução da consulta. */
SELECT a.Nome AS Aluno, d.Nome AS Disciplina,
       ROUND((c.Nota1 + c.Nota2)/2, 2) AS Media,
       NOW() AS DataHoraConsulta
FROM Aluno a
JOIN Curso c ON a.Matricula = c.Matricula
JOIN Disciplina d ON c.CodigoDisciplina = d.CodigoDisciplina;

/* D) Crie uma função chamada fn_situacao_aluno(matricula INT, codigoDisciplina INT) que:
a) Calcule a média do aluno na disciplina ((nota1+nota2)/2)
b) Compare com a notaMinima da disciplina
c) Retorne uma string:
d) "Aprovado" se a média for maior ou igual à nota mínima
e) "Reprovado" caso contrário */

DELIMITER $$
CREATE FUNCTION fn_situacao_aluno(matricula INT, codigoDisciplina INT)
RETURNS VARCHAR(20)
DETERMINISTIC
READS SQL DATA
BEGIN
    DECLARE media FLOAT;
    DECLARE notaMinima FLOAT;
    DECLARE situacao VARCHAR(20);

    SELECT (c.Nota1 + c.Nota2) / 2 INTO media
    FROM Curso c
    WHERE c.Matricula = matricula AND c.CodigoDisciplina = codigoDisciplina;

    SELECT d.NotaMinima INTO notaMinima
    FROM Disciplina d
    WHERE d.CodigoDisciplina = codigoDisciplina;

    IF media >= notaMinima THEN
        SET situacao = 'Aprovado';
    ELSE
        SET situacao = 'Reprovado';
    END IF;

    RETURN situacao;
END$$
DELIMITER ;

/* E) Faça uma consulta integrando tudo: Nome do Aluno, Nome da disciplina, média calculada (com
2 casas decimais), situação do aluno(usando a função criada). */
SELECT
    a.Nome AS Aluno,
    d.Nome AS Disciplina,
    ROUND((c.Nota1 + c.Nota2)/2, 2) AS Media,
    fn_situacao_aluno(a.Matricula, d.CodigoDisciplina) AS Situacao
FROM Aluno a
JOIN Curso c ON a.Matricula = c.Matricula
JOIN Disciplina d ON c.CodigoDisciplina = d.CodigoDisciplina;