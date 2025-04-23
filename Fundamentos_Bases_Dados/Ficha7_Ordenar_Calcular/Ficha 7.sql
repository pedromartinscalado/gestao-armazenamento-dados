-- UFCD 10797
-- Ficha 7

-- 1. Considerando a tabela Pessoa, pretende-se ordenar os dados por idade.
-- SELECT * 
-- FROM Pessoa 
-- ORDER BY Idade


-- 2. Considerando a tabela Pessoa, pretende-se ordenar os dados por idade, descendentemente e por nome, ascendentemente.
-- SELECT *
-- FROM Pessoa
-- ORDER BY Idade DESC, Nome ASC;   

-- 3. Consideremos a tabela Comissões, com os atributos Id_comissão, Id_mensagem e valor. Pretende-se ordenar os dados da tabela comissão por Id_comissão e por Id_ mensagem, ascendentemente.
-- SELECT *
-- FROM Comissao
-- ORDER BY Id ASC, Id_Msg ASC; 

-- 4. Pretende-se ordenar os dados da tabela comissão, cujo Id_comissão seja inferior a 30, por Id_comissão, ascendentemente e por valor, descendentemente.
-- SELECT *  
-- FROM Comissao
-- WHERE Id < 30 
-- ORDER BY Id ASC , Valor DESC;   

-- 5. Consideremos a tabela Pessoa. Pretende-se o nome e idade de todas as pessoas, seleccionando a idade que irão ter daqui a 3 anos, ordenando os dados de saída por nome.
-- SELECT Nome, Idade, Idade + 3 AS Idade_em_3_anos  
-- FROM Pessoa
-- ORDER BY Nome ASC;      

 -- 6. Pretende-se o nome e idade de todas as pessoas, seleccionando a idade que irão ter daqui a 3 anos, ordenando os dados de saída por nome, e atribuíndo a idade actual a (Idade_actual) e a idade daqui a 3 anos (Idade_em_2026 ou "Idade em 2026").
-- SELECT Nome, Idade AS Idade_atual,Idade + 3 AS Idade_em_2026      
-- FROM Pessoa
-- ORDER BY Nome ASC;    

-- 7. Considerando uma tabela Postal, com os atributos Código e Localidade, pretende-se seleccionar todos os Locais da tabela Postal.
-- SELECT DISTINCT Localidade  
-- FROM Postal;      