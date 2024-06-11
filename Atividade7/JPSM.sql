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

insert into pessoa values (1,'João','joao1970@gmail.com','8000.00','1970-05-20','São Paulo', 'SP');
insert into pessoa values (2,'Camila','camila@gmail.com','3000.00','1985-07-23','São Paulo', 'SP');
insert into pessoa values (3,'Marcio','marcio@gmail.com','900.00','1982-03-15','Campinas', 'SP');
insert into pessoa values (4,'Fernanda','fernanda@gmail.com','3500.00','1987-08-18','Rio de Janeiro', 'RJ');
insert into pessoa values (5,'José','jose@gmail.com','2200.00','1990-09-18','Guaxupé', 'MG');
insert into pessoa values (6,'Fabiano','fabiano@gmail.com','6800.00','1981-01-30','Poços de Caldas', 'MG');
insert into pessoa values (7,'Marcos','marcos@gmail.com','3200.00','1989-02-08','Vitória', 'ES');

--  Insira o código para buscar todos os funcionários cujo nome comece com uma vogal (será preciso testar para todas as 5 vogais – a, e, i, o, u)
select * from pessoa where nome like 'a%' or nome like 'e%' or nome like 'i%' or nome like 'o%' or nome like 'u%';

-- Insira o código para exibir nomes e salários em ordem decrescente de salário
select nome,salario from pessoa order by salario desc;

-- Insira o código para exibir nomes e e-mails de funcionários em ordem alfabética de nome
select nome,email from pessoa order by nome;

--  Listar o salário mais alto
select max(salario) from pessoa;

-- Exiba a média dos salários 
select avg(salario) from pessoa;

-- Exiba nomes, salários e e-mails dos funcionários com ID entre 3 e 7
select nome,salario,email from pessoa where id >=3 and id<=7;