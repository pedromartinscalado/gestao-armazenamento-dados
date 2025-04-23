-- FICHA 9 - UFCD 10797 Pedro Calado --
-- JOINS --
-- 1 -- Listar todas as pessoas com suas localidades
-- Sugestão: Juntar as tabelas pessoa e postal para exibir as pessoas com suas respectivas localidades.
/*
SELECT p.NOME, p.IDADE, po.LOCALIDADE
FROM pessoa p
JOIN postal po ON p.COD_Postal = po.CODIGO;
*/

-- 2 -- Obter todas as mensagens e seus valores de comissão (se existirem)
-- Sugestão: Lista todas as mensagens e seus valores de comissão, incluindo mensagens sem comissão (LEFT JOIN).

/*
SELECT m.Mensagem, c.valor
FROM mensagem m
LEFT JOIN comissao c ON m.Id_Msg = c.id_msg;
*/


-- 3 -- Listar mensagens que possuem comissão associada
-- Sugestão: Retorna apenas as mensagens que têm uma comissão associada.

/*
SELECT m.Mensagem, c.valor
FROM mensagem m
INNER JOIN comissao c ON m.Id_Msg = c.id_msg;
*/


-- 4 -- Exibir todas as localidades que possuem pelo menos uma pessoa associada
-- Sugestão: Filtra apenas localidades que estão associadas a pelo menos uma pessoa.

/*
SELECT DISTINCT po.LOCALIDADE
FROM postal po
INNER JOIN pessoa p ON po.CODIGO = p.COD_Postal;
*/


-- 5 -- Exibir todas as pessoas, incluindo aquelas sem um código postal associado
-- Sugestão: Lista todas as pessoas e suas localidades, incluindo aquelas sem código postal (LEFT JOIN).

/*
SELECT p.nome, po.LOCALIDADE
FROM pessoa p
LEFT JOIN postal po
  ON p.COD_Postal = po.CODIGO;
*/


-- DESAFIO - opcional:
-- 1.	Listar todas as pessoas que enviaram mensagens e o valor da comissão associada
-- Enunciado:
-- Crie uma consulta que retorne o nome da pessoa, o conteúdo da mensagem enviada e o valor da comissão, incluindo apenas as mensagens que possuem comissão associada.
-- Sugestão:
-- Relacionamos pessoa e mensagem, assumindo que PessoaID e Id_Msg estão associados (se houver uma relação direta).
-- Depois, associamos mensagem à comissao, garantindo que apenas mensagens com comissão apareçam.
-- Suponha que tem uma forma de saber que a mensagem com Id_Msg = 1 foi enviada pela Pessoa com PessoaID = 5

/*
SELECT p.nome, m.mensagem, c.valor
FROM Pessoa p
INNER JOIN Mensagem m ON p.PessoaID = m.remetente_pessoaID
INNER JOIN Comissao c ON m.Id_Msg = c.Id_Msg;
*/

-- 2-- Exibir todas as pessoas, suas localidades e mensagens enviadas (mesmo que não tenham mensagens)
-- Enunciado:
-- Crie uma consulta que retorne o nome da pessoa, sua localidade e as mensagens que enviou. Inclua todas as pessoas, mesmo aquelas que não enviaram mensagens.
-- Sugestão:
-- Usamos LEFT JOIN para garantir que todas as pessoas apareçam, mesmo que não tenham mensagens associadas.
-- Também garantimos que suas localidades sejam incluídas.

/*
SELECT p.nome, po.localidade, m.mensagem
FROM Pessoa p
INNER JOIN postal po ON p.COD_Postal = po.codigo 
LEFT JOIN Mensagem m ON p.PessoaID = m.remetente_pessoaID
ORDER BY p.nome;
*/

-- 3 -- Exibir todas as mensagens e a localidade das pessoas que as enviaram, incluindo mensagens sem comissão
-- Enunciado:
-- Crie uma consulta que exiba o conteúdo da mensagem, a localidade da pessoa que enviou e o valor da comissão (se existir). Inclua mensagens sem comissão.
-- Sugestão:
-- Garantimos que todas as mensagens apareçam, mesmo que não tenham comissão.
-- Relacionamos mensagem a pessoa para obter quem enviou.
-- Pegamos a localidade da pessoa via a tabela postal.

/*
SELECT M.Mensagem, PO.localidade, C.Valor AS ValorComissao
FROM Mensagem M
LEFT JOIN Pessoa P ON M.Remetente_PessoaID = P.PessoaID
LEFT JOIN postal PO ON P.COD_Postal = PO.codigo
LEFT JOIN Comissao C ON M.Id_Msg = C.Id_Msg
ORDER BY M.Id_Msg;
*/