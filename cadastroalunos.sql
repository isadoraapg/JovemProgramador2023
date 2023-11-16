create database cadastroalunos;

create table alunos(
	id int auto_increment primary key,
    nome varchar(50),
    idade varchar(50),
    semestre varchar(50),
    genero varchar(50),
    matricula varchar(50)
);

select * from alunos;

insert into alunos(nome, idade, semestre, genero, matricula)
values('Rafael', '22', 'Segundo', 'Masculino', '111111');
insert into alunos(nome, idade, semestre, genero, matricula)
values('Julia', '21', 'Primeiro', 'Feminino', '222222');
insert into alunos(nome, idade, semestre, genero, matricula)
values('Maria', '20', 'Primeiro', 'Feminino', '333333');
insert into alunos(nome, idade, semestre, genero, matricula)
values('Fabio', '23', 'Segundo', 'Masculino', '444444');


create table tarefa(
Id INT auto_increment primary key,
descricao varchar(255) not null,
concluida boolean not null
);

create database aulajpa;

use aulajpa;

create table pessoa(
id int auto_increment primary key,
nome varchar (255) not null,
email varchar(255) not null,
idade int not null
);

select * from pessoa;














 
