create table funcionarios(
nome varchar,
cod int primary key,
endereco varchar,
telefone varchar,
crghoraria int,
salario decimal,
funcao varchar
);
 
insert into funcionarios
(nome, cod, endereco, telefone, crghoraria, salario, funcao)
values
('carlo', 1, 'Rua da são jose', '48 908566098', 40, 1000, 'professor'),
('maria', 2, 'Rua das rosas', '48 998011643', 20, 2000, surfista''),
('jose', 3, 'Rua mauricio  ', '22 997422156', 80, 3000, 'faxineiro'),
('luiz', 4, 'rua forencino', '11 578304156', 5, 4000, 'médico');
select * from funcionarios
 
create table clientes(
cod int primary key,
nome varchar,
cpf varchar,
telefone varchar,
email varchar,
cep varchar
);
 
insert into clientes
(cod, nome, cpf, telefone, email, cep)
values
(1, 'carlos', '10074014943', '48997522147', 'carlos@gmail.com', '98102080'),
(2, 'mria', '58874698521', '48998533624', maria@gmail.com', '38102076'),
(3, 'jose', '78896541236', '48998100252', 'jose@gmail.com', '78107030'),
(4, 'luiz', '80024569874', '48996300242', 'luiz@gmail.com', '22594789');
 
select * from clientes
 
create table marcas(
nome varchar,
representante varchar,
cnpj varchar,
cod int primary key,
telefonerep varchar
);
 
insert into marcas
(nome, representante, cnpj, cod, telefonerep)
values
('zara',carlos', '15615616', 1, '32288469'),
('lacoste', 'maria', '12312345', 2, '96632541'),
('adidas', 'maria', '789789456', 3, '96325417'),
('play', 'luiz', '123456789', 4, '96321458');
 
 
select * from marcas
 
create table estoque(
estampa boolean,
tam_roupa varchar,
id_marca int,
foreign key(id_marca) references marcas,
qtd int,
cor varchar,
preco decimal(5,2),
tecido varchar,
cod int primary key);
insert into estoque
(estampa, tam_roupa, id_marca, qtd, cor, preco, tecido, cod)
values
(true, 'g', 1, 2, 'laranja', 500.00, 'poliester', 10),
(false, 'p', 2, 10, 'amarelo', 50.00, 'algodao', 11),
(false, 'pp', 3, 3, 'roxo', 5.00, 'algodao', 12),
(true, 'mm', 4, 6, 'marom', 456.00, 'poliester', 13);
 
 
select * from estoque
 
create table representantes(
telefone varchar,
endereco varchar,
nome varchar,
id int);
 
insert into representantes
(telefone, endereco, nome, id)
values
('48999567531', 'Rua das beija-flor', 'joao', 1),
('48999159984', 'Rua dos Lagartos', 'carol', 2),
('48999451445', 'Rua das cabras', 'victor', 3),
('48999108878', 'Rua das abelas', 'pedro', 4);
 
 
select * from representantes
 
create table compra(
codc_liente int,
foreign key(codcliente)references clientes,
data_compra date,
cod_roupa int,
foreign key (codroupa)references estoque);
 
insert into compra
(cod_cliente, data_compra, cod_roupa)
values
(1, '2020-04-11', 10),
(2, '2020-03-02', 11),
(3, '2020-07-23', 13),
(4, '2020-09-19', 12);
 
select compra.data_compra, clientes.nome, clientes.telefone, estoque.idmarca, estoque.preco from compra
inner join clientes on compra.codcliente = clientes.cod
inner join estoque on compra.codroupa = estoque.cod;
select * from estoque
