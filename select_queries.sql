-- Consulta 1: Listar pedidos finalizados com o nome do cliente e do garçom
SELECT
    p.id_pedido,
    c.nome_cliente,
    f.nome_funcionario AS nome_garcom,
    p.data_pedido,
    p.status_pedido
FROM PEDIDO AS p
INNER JOIN CLIENTE AS c ON p.id_cliente = c.id_cliente
INNER JOIN FUNCIONARIO AS f ON p.id_funcionario = f.id_funcionario
WHERE p.status_pedido = 'Finalizado';

-- Consulta 2: Listar os 3 itens mais caros do cardápio, em ordem decrescente de preço
SELECT
    nome_item,
    preco
FROM ITEM_CARDAPIO
ORDER BY preco DESC
LIMIT 3;

-- Consulta 3: Listar todos os ingredientes usados para fazer a 'Lasanha à Bolonhesa'
SELECT
    i.nome_ingrediente
FROM RECEITA AS r
INNER JOIN ITEM_CARDAPIO AS ic ON r.id_item = ic.id_item
INNER JOIN INGREDIENTE AS i ON r.id_ingrediente = i.id_ingrediente
WHERE ic.nome_item = 'Lasanha à Bolonhesa';