-- SELECT * FROM PESSOA; -- todas as colunas e todas as linhas da tabela pessoa
-- SELECT * FROM postal;
-- SELECT * FROM mensagem;
-- SELECT * FROM comissao;

-- SELECT Codigo, Localidade FROM Postal
-- SELECT LOCALIDADE FROM postal;
-- SELECT distinct Localidade FROM Postal

-- select pessoa.pessoaID, pessoa.NOME, pessoa.SALARIO
-- from Pessoa

-- select pessoaID, NOME, IDADE, SALARIO as "Salário", TELEFONE, COD_Postal
-- from Pessoa;

-- SELECT * 
-- FROM Pessoa
-- WHERE idade = 35;


-- select pessoaID, NOME, SALARIO
-- from Pessoa
-- where idade=35;

-- select pessoaID, NOME, SALARIO
-- from Pessoa
-- where idade >= 18;

-- select pessoaID, IDADE, NOME, SALARIO
-- from Pessoa
-- where idade >= 18;

-- select * from pessoa where idade=35;
-- select * from pessoa where idade!=35;


-- select pessoaID, IDADE, NOME, SALARIO
-- from Pessoa
-- where idade >= 30 AND idade <= 40;


-- select pessoaID, IDADE, NOME, SALARIO
-- from Pessoa
-- where idade < 30 OR idade > 40;


-- select pessoaID, NOME, IDADE
-- FROM Pessoa
-- where NOT (idade >= 30 AND idade <= 40);

-- select pessoaID, NOME, IDADE,SALARIO
-- FROM Pessoa
-- WHERE NOT idade >= 30;


-- SELECT PessoaId, Nome, Idade, Salario 
-- FROM Pessoa 
-- WHERE idade BETWEEN 30 AND 40

-- SELECT PessoaId, Nome, Idade, Salario 
-- FROM Pessoa 
-- WHERE idade NOT BETWEEN 30 AND 40


-- SELECT PessoaId, Nome, Idade, Salario 
-- FROM Pessoa
-- WHERE NOT idade BETWEEN 30 AND 40

-- SELECT * 
-- FROM Postal 
-- WHERE Localidade IN ('LISBOA', 'RIO MAIOR')


-- SELECT *
-- FROM Postal
-- WHERE Localidade NOT IN ('LISBOA','RIO MAIOR')



-- SELECT Nome 
-- FROM Pessoa 
-- WHERE Telefone IS NULL


SELECT PessoaId, Nome, Idade, Salario, Telefone, Cod_postal 
FROM Pessoa 
WHERE Telefone IS NOT NULL

