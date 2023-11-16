create database SistemaInternoLoja;
use SistemaInternoLoja;

create table Produtos(
referencia int not null,
cor int not null,
nome varchar(60) not null,
tamanho enum('P', 'M', 'G', 'GG') not null,
preco decimal(6,2) not null,
primary key (referencia)
);

create table Funcionarios(
id int not null auto_increment,
nome varchar(50) not null,
funcao varchar(20) not null,
primary key(id)
);

create table Clientes(
cpf varchar(11) not null,
nome varchar(50) not null,
cep varchar(8) not null,
endereco varchar(50) not null,
numero int not null,
complemento varchar(20),
bairro varchar(30) not null,
cidade varchar(50) not null,
uf varchar(2) not null,
telefone varchar(11) not null,
email varchar(30),
data_nasc date not null, 
sexo enum('M', 'F'),
primary key(CPF)
);

create table Vendas(
cupom_fiscal int not null auto_increment,
data_compra date not null,
cpf_cliente varchar(11) not null,
referencia_prod int not null,
preco_total decimal(5,2) not null,
vendedor int not null,
foreign key (cpf_cliente) references clientes (cpf), 
foreign key (referencia_prod) references produtos (referencia),
foreign key (vendedor) references funcionarios (id),
primary key (cupom_fiscal)
);

insert into Vendas
values
(default, '2023-05-03', '11122233344', 20230001, '109.90', 2301);


select * from Produtos;
select * from Funcionarios;
select * from Clientes;
select * from Vendas;


insert into Funcionarios
values
(2301, 'Isadora', 'func01'),
(2302, 'Mariana', 'func02'),
(2303, 'Alexander', 'fun03'),
(2304, 'Edson', 'func04');

delete from vendas
where cupom_fiscal = 5;

insert into Produtos
values
(20230001, 01, 'CAMISETA BÁSICA', 'P', '109.90'),
(20230002, 02, 'CAMISETA BÁSICA', 'M', '109.90'),
(20230003, 01, 'CAMISETA BÁSICA', 'G', '109.90'),
(20230004, 04, 'CAMISETA BÁSICA', 'P', '109.90'),
(20230005, 03, 'BERMUDA SLIM', 'M', '169.90');

insert into Clientes
values
('11122233344', 'Fulano de Tal', '88000100', 'Rua X', 120, 'Apto 101', 'Centro', 'Florianópolis', 'SC', '48999998888', 'fulanodetal@email.com', '1990-01-01', 'M'),
('22233344455', 'Ciclano Souza', '88010001', 'Rua Y', 230, 'Apto 402', 'Centro', 'Florianópolis', 'SC', '48988889988', 'ciclanosouza@email.com', '1992-03-23', 'M');

