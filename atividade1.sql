SELECT data_venda 
FROM vendas1
WHERE data_venda = '2025-04-02';


SELECT v.id_cliente, c.nome, v.data_venda
FROM vendas1 v
JOIN clientes1 c ON v.id_cliente = c.id_cliente;

SELECT v.id_cliente, c.nome, v.data_venda
FROM vendas1 v
JOIN clientes1 c ON v.id_cliente = c.id_cliente
WHERE v.data_venda = '2025-04-01';


SELECT v.id_cliente, v.id_produto, v.vendedor
FROM vendas1 v
JOIN clientes1 c ON v.id_cliente = c.id_cliente
JOIN produtos1 p ON v.id_produto = p.id_produto
where v.vendedor = 'Ana Paula';

SELECT v.id_cliente, v.id_produto, v.vendedor
FROM vendas1 v
JOIN clientes1 c ON v.id_cliente = c.id_cliente
JOIN produtos1 p ON v.id_produto = p.id_produto
WHERE v.vendedor = 'Ana Paula';

SELECT v.id_cliente, c.nome AS nome_cliente, v.id_produto, p.nome_produto AS nome_produto, v.vendedor
FROM vendas1 v
JOIN clientes1 c ON v.id_cliente = c.id_cliente
JOIN produtos1 p ON v.id_produto = p.id_produto
WHERE v.vendedor = 'Ana Paula';