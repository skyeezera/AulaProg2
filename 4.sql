CREATE TABLE vendas1(
    id_venda INT AUTO_INCREMENT PRIMARY KEY,
    id_cliente INT,
    id_produto INT,
    data_venda DATE,
    quantidade INT,
    FOREIGN KEY (id_cliente) REFERENCES clientes(id_cliente)
);

INSERT INTO vendas1 (id_cliente, id_produto, data_venda, quantidade) VALUES
(1, 3, '2025-04-01', 1),  -- Carlos Silva comprou o Monitor LED 24"
(2, 5, '2025-04-02', 2),  -- Ana Oliveira comprou 2 Headsets Gamer
(3, 7, '2025-04-03', 1),  -- João Pereira comprou a Mochila para notebook
(4, 1, '2025-04-04', 3),  -- Maria Souza comprou 3 Mouses sem fio
(5, 9, '2025-04-05', 1);  -- Pedro Costa comprou a Caixa de som Bluetoot