create database Funcoes;
use Funcoes;

create table Departamentos(
Codigo_depto int primary key,
NomeDepto varchar(50)
);

create table Funcionarios(
Codigo_func int primary key,
NomeFunc varchar(30),
Sobrenome varchar(50),
DataNasc date,
CPF varchar(16),
RG varchar(16),
Endereco varchar(60),
cep varchar(18),
Cidade varchar(50),
Fone varchar(14),
CodigoDepartamento int,
Funcao varchar(50),
Salario float,
foreign key(CodigoDepartamento) references Departamentos(Codigo_depto)
);

insert into Departamentos values(1,'Financeiro');
insert into Departamentos values(2,'Marketing');
insert into Departamentos values(3,'Administrativo');

select * from Departamentos

insert into Funcionarios values(1,'Sônia','Antônia Carvalho','1998-01-21','006.005.395-04','23.602.614-8','Setor Novo Setor','73270-565','Brasília','(61) 2951-0382',1,'tesouraria','21.508');
insert into Funcionarios values(2,'Stefany Isabel','Márcia Vieira','1998-04-04','980.589.815-67','19.961.374-6','Rua Jamil Amiden','20771-200','Rio de Janeiro','(21) 2594-5921',1,'contabilidade','6.013');
insert into Funcionarios values(3,'Agatha Ester','Aparecida Barros','1998-03-07','596.174.273-38','21.696.818-5','Rua Vasco Fernades Coutinho','29138-650','Viana','(27) 3708-5235',1,'contabilidade','7.817');
insert into Funcionarios values(4,'Brenda','Olivia Castro','1998-02-02','069.173.992-72','44.802.950-9','Rua Quinze','78055-820','Cuiabá','(65) 3762-4155',1,'planejamento','5.476');
insert into Funcionarios values(5,'Liz Adriana','Catarina Dias','1998-03-14','990.394.672-42','25.448.761-0','Travessa Recanto do Sol','59025-790','Natal','(84) 3571-4789',2,'Gerente de Comunicacao','9.275');
insert into Funcionarios values(6,'Thales Carlos','Bryan dos Santos','1996-01-23','840.862.057-69','42.840.071-1','Residencial São Matheus','78095-494','Cuiabá','(65) 3928-4539',2,'Gerente de Marketing','7.346');
insert into Funcionarios values(7,'Leandro','Pedro da Cunha','1996-01-21','323.860.342-67','14.543.216-6','Rua Pereira','69914-270','Rio Branco','(68) 2842-5662',2,'Gerente de Vendas','5.863');
insert into Funcionarios values(8,'Pietro Benício','André Rezende','1996-01-28','882.787.310-47','37.611.957-3','Rua Alfredo Pimentel','54340-015','Jaboatão dos Guararapes','(81) 9915-1960',3,'planejardor','3.725');
insert into Funcionarios values(9,'Ryan Carlos','Vitor Alves','1996-02-15','177.865.051-13','19.176.483-8','Rua Júlio Almeida','45658-280','Ilhéus','(73) 2705-5257',3,'Personal Organizer','3.413');
insert into Funcionarios values(10,'Benedito Ryan','Mateus Martins','1996-03-01','995.971.462-40','42.130.992-1','Rua John Kennedy','76873-352','Ariquemes','(95) 3823-8374',3,'dirigir e controlar','9.630');
insert into Funcionarios values(11,'Ryan Garcias','Mateus Martins','1996-03-11','995.971.464-44','42.130.982-1','Rua Camargo John Kennedy','77073-352','Recife','(81) 2338-8374',3,'Supervisor','9.630');
insert into Funcionarios values(12,'Caleb Vinicius','Enzo Rodrigues','1997-01-29','857.049.084-46','27.742.865-8','Rua Seis','51150-234','Recife','(81) 2524-5619',1,'Telefonista','3.630');

select * from Funcionarios;

--Listar nome e sobrenome ordenado por sobrenome:
select NomeFunc, Sobrenome from Funcionarios order by Sobrenome;

--Listar todos os campos de funcionários ordenados por cidade:
select * from Funcionarios order by Cidade;

--Listar os funcionários que têm salário superior a R$ 1.000,00 ordenados pelo nome completo:
select NomeFunc, Sobrenome,Salario from Funcionarios where Salario > 1.000 order by NomeFunc, Sobrenome;

--Listar a data de nascimento e o primeiro nome dos funcionários ordenados do mais novo para o mais velho:
select DataNasc, NomeFunc from Funcionarios order by DataNasc desc;

--Listar os funcionários nesta sequência de campos: Sobrenome, nome, cidade, endereço, fone:
select Sobrenome, NomeFunc, Cidade, Endereco, Fone from Funcionarios;

--Listar o total da folha de pagamento:
select sum(Salario) from Funcionarios;

--Listar o nome completo, o salário e a função de todos os funcionários ordenados por função:
select NomeFunc, Sobrenome, Salario, Funcao from Funcionarios order by Funcao;

--Listar os funcionários que têm a função de supervisor:
select * from Funcionarios where Funcao = 'supervisor';

--Liste a quantidade de funcionários desta empresa:
select count(*) from Funcionarios;

--Liste o salário médio pago pela empresa:
select avg(Salario) from Funcionarios;

--Liste os nomes dos funcionários que moram em Recife e que exerçam a função de Telefonista:
select NomeFunc, Sobrenome,Cidade,Funcao from Funcionarios where Cidade = 'Recife' AND Funcao = 'Telefonista';
