-- Criação do banco de dados (opcional, dependendo do SGBD)
-- CREATE DATABASE casa_do_sabor;
-- USE casa_do_sabor;

-- Tabela FUNCIONARIO
CREATE TABLE FUNCIONARIO (
    id_funcionario INT PRIMARY KEY AUTO_INCREMENT,
    nome_funcionario VARCHAR(255) NOT NULL,
    cargo VARCHAR(50),
    data_contratacao DATE,
    contato VARCHAR(100)
);

-- Tabela CLIENTE
CREATE TABLE CLIENTE (
    id_cliente INT PRIMARY KEY AUTO_INCREMENT,
    nome_cliente VARCHAR(255) NOT NULL,
    contato VARCHAR(100),
    email VARCHAR(100) UNIQUE
);

-- Tabela MESA
CREATE TABLE MESA (
    num_mesa INT PRIMARY KEY,
    capacidade INT,
    status_mesa VARCHAR(20) DEFAULT 'Disponível'
);

-- Tabela PEDIDO
CREATE TABLE PEDIDO (
    id_pedido INT PRIMARY KEY AUTO_INCREMENT,
    data_pedido DATE NOT NULL,
    hora_pedido TIME NOT NULL,
    status_pedido VARCHAR(20) DEFAULT 'Aberto',
    id_cliente INT,
    num_mesa INT,
    id_funcionario INT,
    FOREIGN KEY (id_cliente) REFERENCES CLIENTE(id_cliente) ON DELETE SET NULL,
    FOREIGN KEY (num_mesa) REFERENCES MESA(num_mesa) ON DELETE SET NULL,
    FOREIGN KEY (id_funcionario) REFERENCES FUNCIONARIO(id_funcionario) ON DELETE SET NULL
);

-- Tabela VENDA
CREATE TABLE VENDA (
    id_venda INT PRIMARY KEY AUTO_INCREMENT,
    data_venda DATE NOT NULL,
    valor_total DECIMAL(10, 2) NOT NULL,
    id_pedido INT UNIQUE,
    FOREIGN KEY (id_pedido) REFERENCES PEDIDO(id_pedido) ON DELETE CASCADE
);

-- Tabela DESPESA
CREATE TABLE DESPESA (
    id_despesa INT PRIMARY KEY AUTO_INCREMENT,
    descricao_despesa VARCHAR(255) NOT NULL,
    valor DECIMAL(10, 2) NOT NULL,
    data_despesa DATE NOT NULL,
    id_venda INT,
    FOREIGN KEY (id_venda) REFERENCES VENDA(id_venda) ON DELETE SET NULL
);

-- Tabela ITEM_CARDAPIO
CREATE TABLE ITEM_CARDAPIO (
    id_item INT PRIMARY KEY AUTO_INCREMENT,
    nome_item VARCHAR(255) NOT NULL,
    descricao_item TEXT,
    preco DECIMAL(10, 2) NOT NULL
);

-- Tabela INGREDIENTE
CREATE TABLE INGREDIENTE (
    id_ingrediente INT PRIMARY KEY AUTO_INCREMENT,
    nome_ingrediente VARCHAR(255) NOT NULL UNIQUE
);

-- Tabela ESTOQUE
CREATE TABLE ESTOQUE (
    id_estoque INT PRIMARY KEY AUTO_INCREMENT,
    id_ingrediente INT UNIQUE,
    quantidade_disponivel DECIMAL(10, 2),
    unidade_medida VARCHAR(20),
    data_atualizacao DATETIME,
    FOREIGN KEY (id_ingrediente) REFERENCES INGREDIENTE(id_ingrediente) ON DELETE CASCADE
);

-- Tabela ITEM_PEDIDO (tabela associativa para N:M)
CREATE TABLE ITEM_PEDIDO (
    id_pedido INT,
    id_item INT,
    quantidade INT NOT NULL,
    PRIMARY KEY (id_pedido, id_item),
    FOREIGN KEY (id_pedido) REFERENCES PEDIDO(id_pedido) ON DELETE CASCADE,
    FOREIGN KEY (id_item) REFERENCES ITEM_CARDAPIO(id_item) ON DELETE CASCADE
);

-- Tabela RECEITA (tabela associativa para N:M)
CREATE TABLE RECEITA (
    id_item INT,
    id_ingrediente INT,
    quantidade_usada DECIMAL(10, 2) NOT NULL,
    PRIMARY KEY (id_item, id_ingrediente),
    FOREIGN KEY (id_item) REFERENCES ITEM_CARDAPIO(id_item) ON DELETE CASCADE,
    FOREIGN KEY (id_ingrediente) REFERENCES INGREDIENTE(id_ingrediente) ON DELETE CASCADE
);