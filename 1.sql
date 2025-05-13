CREATE TABLE endereco (
    id INT AUTO_INCREMENT PRIMARY KEY,
    cidade VARCHAR(50),
    estado VARCHAR(2),
    bairro VARCHAR(100),
    rua VARCHAR(100),
    numero VARCHAR(100),
    cep VARCHAR(10),
    FOREIGN KEY (cliente_id) REFERENCES cliente(id)
);