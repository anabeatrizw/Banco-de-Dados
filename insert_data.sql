-- Inserir dados na tabela FUNCIONARIO
INSERT INTO FUNCIONARIO (nome_funcionario, cargo, data_contratacao, contato) VALUES
('João Silva', 'Gerente', '2022-01-15', 'joao.s@email.com'),
('Maria Oliveira', 'Garçom', '2023-03-20', 'maria.o@email.com'),
('Pedro Souza', 'Cozinheiro', '2022-05-10', 'pedro.s@email.com');

-- Inserir dados na tabela CLIENTE
INSERT INTO CLIENTE (nome_cliente, contato, email) VALUES
('Ana Costa', 'ana.c@email.com', '11987654321'),
('Bruno Lima', 'bruno.l@email.com', '11998765432');

-- Inserir dados na tabela MESA
INSERT INTO MESA (num_mesa, capacidade, status_mesa) VALUES
(1, 4, 'Ocupada'),
(2, 2, 'Disponível'),
(3, 6, 'Ocupada');

-- Inserir dados na tabela ITEM_CARDAPIO
INSERT INTO ITEM_CARDAPIO (nome_item, descricao_item, preco) VALUES
('Lasanha à Bolonhesa', 'Deliciosa lasanha com molho bolonhesa', 45.00),
('Espaguete ao Pesto', 'Massa com molho pesto e nozes', 38.00),
('Refrigerante', 'Lata de 350ml', 7.00);

-- Inserir dados na tabela INGREDIENTE
INSERT INTO INGREDIENTE (nome_ingrediente) VALUES
('Massa de lasanha'),
('Molho bolonhesa'),
('Queijo mussarela'),
('Espaguete'),
('Manjericão'),
('Azeite'),
('Refrigerante Lata');

-- Inserir dados na tabela PEDIDO
INSERT INTO PEDIDO (data_pedido, hora_pedido, status_pedido, id_cliente, num_mesa, id_funcionario) VALUES
('2025-11-30', '19:30:00', 'Finalizado', 1, 1, 2),
('2025-11-30', '20:15:00', 'Aberto', 2, 3, 2);

-- Inserir dados na tabela ITEM_PEDIDO
INSERT INTO ITEM_PEDIDO (id_pedido, id_item, quantidade) VALUES
(1, 1, 1),
(1, 3, 2),
(2, 2, 1);

-- Inserir dados na tabela VENDA
INSERT INTO VENDA (data_venda, valor_total, id_pedido) VALUES
('2025-11-30', 59.00, 1);