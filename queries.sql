USE Pizzaria;

SHOW TABLES;

SELECT COUNT(*) AS total_clientes
FROM Clientes;

SELECT COUNT(*) AS total_pizzas
FROM Pizzas;

SELECT SUM(quantidade) AS total_pizzas
FROM Itens_Pedido
WHERE pedido_id = 3;

SELECT Clientes.nome
FROM Clientes
INNER JOIN Pedidos
ON Clientes.Cliente_id = Pedidos.cliente_id
WHERE Pedidos.pedido_id = 3;

SELECT Pizzas.nome
FROM Pizzas
INNER JOIN Itens_Pedido
ON Pizzas.pizza_id = Itens_Pedido.pizza_id
WHERE Itens_Pedido.pedido_id = 3;

{
    "nome":"Gaspar Oliveira",
    "cep":"13905-620",
    "logradouro":"Rua Alcides Postali",
    "numero":21,
    "bairro":"São Dimas",
    "referencia":"Ao lado da igreja",
    "telefone":"19 99898-1141"
}
- Pizzas
[
    {"quantidade":1,"pizza":"Margherita"},
    {"quantidade":2,"pizza":"Napolitana"}
]
{
    "nome":"A moda do chef",
    "descricao": "Molho de tomate, palmito macio em rodelas, coberto com catupiry, frango desfiado, ovos, carne seca, oregano e azeitonas",
    "preco" 41.9
}

INSERT INTO pedidos (cliente_id, data, hora)
VALUES (
    (SELECT cliente_id FROM clientes
    WHERE nome = 'Gaspar Oliveira'),
    CURDATE(),
    CURTIME()
);

INSERT INTO pizzas (nome, descricao, valor)
VALUES (
    'A moda do chef',
    'Molho de tomate, palmito macio em rodelas, coberto com catupiry, frango desfiado, ovos, carne seca, oregano e azeitonas',
    41.90
);