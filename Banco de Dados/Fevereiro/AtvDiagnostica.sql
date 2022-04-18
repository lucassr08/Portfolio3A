create table cliente(
	cod int primary key,
	endereco varchar (40),
	id_cliente varchar (20),
	nome varchar (20)
);

insert into cliente(cod, endereco, id_cliente, nome)
values
(1,'Rua da noite', 9357-2067, 123.456.725-33),
(2,'Rua da flor', 9867-2067, 123.456.724-33),
(3,'Rua do rosa', 9851-2067, 123.456.723-33);

create table biblioteca(
	cod int primary key,
	nome varchar (40),
	endereço varchar (20),
	estoque varchar (30)
);

insert into blibioteca(cod, nome, endereço, estoque)
values
(16,'Rua de saturno', 8976-9836, livros é vida),


create table livros(
	isnb int primary key,
	autor varchar (30),
	genero int,
	numero_paginas varchar (20),
	cod_livro int,
	foreign key(cod_livro)references blibioteca(cod)
);

insert into livros(isbn, genero, numero_paginas, autor, cod_livro)
values
(425,'terror',49,'grito',16),
(426,'Romance',50,'O amor',16),
(427,'Suspense',38,'Cidade a cinzas',16);

create table compras(
	data date,
	cod_cliente int,
	foreign key(cod_cliente)references cliente(cod)
	cod_livros int,
	foreign key(cod_livros)references livros(isbn)
);

insert into compras(data, cod_cliente, cod_livros)
(2022-02-15,3,425),
(2022-02-15,1,426),
(2022-02-15,2,427);

select * from cliente
