-- UPDATE 1: Atualizar o preço de um item do cardápio
UPDATE ITEM_CARDAPIO
SET preco = 48.00
WHERE nome_item = 'Lasanha à Bolonhesa';

-- UPDATE 2: Alterar o status de uma mesa
UPDATE MESA
SET status_mesa = 'Disponível'
WHERE num_mesa = 1;

-- UPDATE 3: Corrigir o contato de um cliente
UPDATE CLIENTE
SET contato = 'bruno.l@novoemail.com'
WHERE nome_cliente = 'Bruno Lima';

-- DELETE 1: Remover um pedido incompleto (exemplo, supondo que não há venda vinculada)
DELETE FROM PEDIDO
WHERE id_pedido = 2 AND status_pedido = 'Aberto';

-- DELETE 2: Remover um funcionário que não trabalha mais
DELETE FROM FUNCIONARIO
WHERE nome_funcionario = 'Pedro Souza';

-- DELETE 3: Remover uma despesa registrada incorretamente (exemplo)
-- Atenção: A restrição de integridade referencial pode impedir esta operação.
-- Este comando pode falhar se a chave estrangeira for restrita (`ON DELETE RESTRICT`).
-- Use-o com cautela.
DELETE FROM DESPESA
WHERE id_despesa = 1;