-- FICHA 8 - UFCD 10797 Pedro Calado --
-- AGREGAÇÃO -- 
-- 1 -- Pretende-se saber quantas pessoas existem na tabela Pessoa.
/*
SELECT COUNT(*) AS Total
FROM Pessoa
*/

-- 2 -- Pretende-se saber quantas pessoas existem na tabela Pessoa e quantas pessoas possuem telefone.
/*
SELECT COUNT(*) AS 'Total de pessoas', 
COUNT(Telefone) AS 'Total de telefones'
FROM Pessoa
*/

-- 3 -- Pretende-se saber quantos Códigos postais diferentes existem na tabela Pessoa.
/*
SELECT COUNT(DISTINCT Cod_postal) 
AS 'Cód. postais diferentes' 
FROM Pessoa
*/

-- 4 -- Pretende-se saber a idade da pessoa mais nova e a idade da pessoa mais velha da tabela Pessoa.
/*
SELECT MAX(idade) AS 'Maior Idade', 
MIN(idade) AS 'Menor Idade' 
FROM Pessoa
*/

-- 5 -- Pretende-se saber o nome da primeira e da última pessoa da tabela Pessoa, se a lista fosse ordenada alfabeticamente.
/*
SELECT MAX(nome) AS Primeiro, 
MIN(nome) AS Último 
FROM Pessoa
*/

-- 6 -- Pretende-se saber o total de salários da tabela Pessoa.
/*
SELECT SUM(salario) AS 'Total de Salários' 
FROM Pessoa
*/

-- 7 -- Pretende-se saber o total das idades da tabela Pessoa.
/*
SELECT SUM(idade) AS 'Total das idades' 
FROM Pessoa
*/

-- 8 -- Pretende-se saber o total de salários da tabela Pessoa, assim como o total dos salários do próximo mês, sabendo que os salários serão aumentados em 3%.
/*
SELECT SUM(salario) AS 'Total de Salários',
SUM(salario) * 1.03 AS 'Total de Salários com aumento' 
FROM Pessoa
*/

-- 9 -- Pretende-se saber a média das idades da tabela Pessoa.
/*
SELECT AVG(idade) AS 'Média de Idades' 
FROM Pessoa
*/

-- 10 -- Pretende-se saber a média das idades da tabela Pessoa, formatada a duas casas decimais.
/*
SELECT FORMAT(AVG(idade), 2) AS 'Média de Idades' 
FROM Pessoa;
*/

-- AGRUPAMENTO -- 
-- 11 -- Pretende-se mostrar as comissões e respectivos valores, ordenando o resultado por Id da tabela comissão.
/*
SELECT Id, Valor FROM Comissao
ORDER BY Id
*/

-- 12 -- Pretende-se saber o total de valores de comissões.
/*
SELECT SUM(Valor) AS Total 
FROM Comissao
*/

-- 13 -- Pretende-se saber, para cada Id, o total de valores de comissões.
/*
SELECT Id, SUM(Valor) AS Total 
FROM Comissao
GROUP BY Id
*/

-- 14 -- Pretende-se saber, para cada Id, o maior valor de comissão.
/*
SELECT Id, 
MAX(Valor) AS Maior 
FROM Comissao
GROUP BY Id
*/

-- 15 -- Pretende-se saber para cada Id, o maior valor de comissão, efectuando a ordenação descendente por maior valor de comissão.
/*
SELECT MAX(Valor) AS Maior, Id
FROM Comissao
GROUP BY Id ORDER BY MAX(Valor) DESC
*/

-- 16 -- Pretende-se saber, para cada Id, o total de valores de comissões. No entanto, só são relevantes os totais superiores a 1000.
/*
SELECT Id, SUM(Valor) AS Total 
FROM Comissao
GROUP BY Id HAVING SUM(Valor) > 1000
*/

-- 17 -- Pretende-se saber, para cada Id, o maior valor de comissão. No entanto, só são relevantes os valores inferiores a 3000.
/* 
SELECT Id, MAX(Valor) AS Maior 
FROM Comissao
GROUP BY Id HAVING MAX(Valor) < 3000
*/

-- 18 -- Pretende-se saber qual o total de comissões para cada Id, considerando apenas aquelas cujo valor seja superior a 1000.
/*
SELECT Id, SUM(Valor) AS Total 
FROM Comissao
WHERE valor > 1000 
GROUP BY Id
*/