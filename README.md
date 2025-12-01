# Sistema de Gestão para o Restaurante "Casa do Sabor"

## 🍽️ Visão Geral

Este projeto consiste na modelagem e implementação de um banco de dados para um sistema de gestão de restaurante, focado em otimizar as operações diárias da "Casa do Sabor". O sistema gerencia processos como pedidos, cardápio, controle de estoque e informações de vendas, com o objetivo de aumentar a eficiência e a lucratividade do negócio.

## 📊 Estrutura do Banco de Dados

O modelo lógico foi desenvolvido e normalizado até a Terceira Forma Normal (3FN) para garantir a integridade e evitar redundância de dados.

### Diagrama Entidade-Relacionamento (DER)

![Diagrama do Modelo Lógico](link_para_a_imagem_do_der.png)

### Tabelas e Relacionamentos

*   **`FUNCIONARIO`**: Gerencia os dados dos funcionários (gerentes, garçons, cozinheiros).
*   **`CLIENTE`**: Armazena informações dos clientes para fidelização.
*   **`MESA`**: Controla o status e a capacidade das mesas.
*   **`PEDIDO`**: Registra os pedidos dos clientes, associando-os a funcionários e mesas.
*   **`VENDA`**: Registra as transações finalizadas.
*   **`DESPESA`**: Armazena as despesas operacionais.
*   **`ITEM_CARDAPIO`**: Lista os pratos e bebidas disponíveis.
*   **`INGREDIENTE`**: Cataloga os ingredientes usados nos pratos.
*   **`ESTOQUE`**: Controla a quantidade dos ingredientes.
*   **`ITEM_PEDIDO`**: Tabela de relacionamento N:M entre `PEDIDO` e `ITEM_CARDAPIO`.
*   **`RECEITA`**: Tabela de relacionamento N:M entre `ITEM_CARDAPIO` e `INGREDIENTE`.

## ⚙️ Instalação e Execução

Para configurar e rodar o projeto, siga os passos abaixo.

### Pré-requisitos
*   Um sistema de gerenciamento de banco de dados (SGBD) como MySQL ou PostgreSQL instalado.
*   Uma ferramenta de cliente, como MySQL Workbench, DBeaver ou pgAdmin, para executar os scripts SQL.

### Passos
1.  **Clone o repositório:**
    ```sh
    git clone github.com
    ```
2.  **Crie o banco de dados:** Crie um novo banco de dados vazio no seu SGBD.
3.  **Execute os scripts SQL na seguinte ordem:**
    *   `create_tables.sql`: Cria todas as tabelas do projeto.
    *   `insert_data.sql`: Popula as tabelas com dados iniciais.
    *   `select_queries.sql`: Contém exemplos de consultas para explorar os dados.
    *   `update_delete.sql`: Inclui comandos de `UPDATE` e `DELETE` para manipulação dos dados.

## 📁 Conteúdo dos Scripts

### `create_tables.sql`
Este script contém todos os comandos `CREATE TABLE` necessários para construir a estrutura do banco de dados, incluindo a definição das chaves primárias (`PRIMARY KEY`) e estrangeiras (`FOREIGN KEY`), garantindo a integridade referencial.

### `insert_data.sql`
Comandos `INSERT` para popular as tabelas com dados de exemplo, permitindo que as consultas funcionem e os resultados sejam demonstrados.

### `select_queries.sql`
Este script demonstra o uso de comandos `SELECT` mais complexos, incluindo:
*   `JOIN` para combinar dados de várias tabelas.
*   `WHERE` para filtrar registros.
*   `ORDER BY` para ordenar os resultados.
*   `LIMIT` para restringir o número de registros retornados.

### `update_delete.sql`
Contém exemplos de como usar os comandos `UPDATE` e `DELETE` para modificar e remover dados de forma segura, respeitando as restrições de integridade.

## 🤝 Contribuições

Contribuições são bem-vindas! Sinta-se à vontade para abrir uma *issue* ou enviar um *pull request* com melhorias no projeto.