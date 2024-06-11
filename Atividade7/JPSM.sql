create database JPSM;
use JPSM;

create table pessoa(
id int primary key,
nome varchar(60),
email varchar(65),
salario float,
data_nasc date,
cidade varchar(60),
estado varchar(2)
);

insert into pessoa values (1,'Jo�o','joao1970@gmail.com','8000.00','1970-05-20','S�o Paulo', 'SP');
insert into pessoa values (2,'Camila','camila@gmail.com','3000.00','1985-07-23','S�o Paulo', 'SP');
insert into pessoa values (3,'Marcio','marcio@gmail.com','900.00','1982-03-15','Campinas', 'SP');
insert into pessoa values (4,'Fernanda','fernanda@gmail.com','3500.00','1987-08-18','Rio de Janeiro', 'RJ');
insert into pessoa values (5,'Jos�','jose@gmail.com','2200.00','1990-09-18','Guaxup�', 'MG');
insert into pessoa values (6,'Fabiano','fabiano@gmail.com','6800.00','1981-01-30','Po�os de Caldas', 'MG');
insert into pessoa values (7,'Marcos','marcos@gmail.com','3200.00','1989-02-08','Vit�ria', 'ES');

--  Insira o c�digo para buscar todos os funcion�rios cujo nome comece com uma vogal (ser� preciso testar para todas as 5 vogais � a, e, i, o, u)
select * from pessoa where nome like 'a%' or nome like 'e%' or nome like 'i%' or nome like 'o%' or nome like 'u%';

-- Insira o c�digo para exibir nomes e sal�rios em ordem decrescente de sal�rio
select nome,salario from pessoa order by salario desc;

-- Insira o c�digo para exibir nomes e e-mails de funcion�rios em ordem alfab�tica de nome
select nome,email from pessoa order by nome;

--  Listar o sal�rio mais alto
select max(salario) from pessoa;

-- Exiba a m�dia dos sal�rios 
select avg(salario) from pessoa;

-- Exiba nomes, sal�rios e e-mails dos funcion�rios com ID entre 3 e 7
select nome,salario,email from pessoa where id >=3 and id<=7;