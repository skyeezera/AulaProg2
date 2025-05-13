CREATE TABLE produtos (
id INT primary key auto_increment,
Nome varchar(100) Not null,
Categoria varchar(50) Not null,
Preco decimal (10,2) Not null,
Estoque int (50) Not null,
Fornecedor varchar(50) Not null,
Data_Validade timestamp default current_timestamp,
Peso decimal (5,2),
Situacao boolean default true,
Descricao text 
);

select * from produtos;
