CREATE TABLE produtos1 (
id_produto INT AUTO_INCREMENT PRIMARY KEY,
nome_produto VARCHAR(100),
preco DECIMAL(10,2)
);
INSERT INTO produtos1 (nome_produto, preco) 
VALUES('Mouse sem fio',99.99),
('Teclado mecânico',199.99),
('Monitor LED 24"',699.99),
('Headset Gamer',159.99),
('Webcam HD',89.99),
('Mochila para notebook',149.99),
('Mouse pad grande',29.99),
('Fone de ouvido Bluetooth',129.99),
('Caixa de som Bluetooth',249.99),
('Adaptador USB-C para HDMI',59.99);
