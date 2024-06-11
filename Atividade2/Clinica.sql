create database Clinica;
use Clinica;

create table Ambulatorios(
nroa int primary key,
andar int not null,
capacidade int
);

create table Medicos(
codm int primary key,
nome varchar(40) not null,
nasc date not null,
especialidade varchar(20),
CPF varchar(14) unique,
cidade varchar(30),
nroa int,
foreign key(nroa) references Ambulatorios(nroa)
);

create table Pacientes(
codp int primary key,
nome varchar(40) not null,
nasc date not null,
cidade varchar(30),
CPF varchar(14) unique,
doenca varchar(40) not null
);

create table Funcionarios(
codf int primary key,
nome varchar(40) not null,
nasc date,
CPF varchar(14) unique,
cidade varchar(30),
salario float,
cargo varchar(20),
nroa int,
foreign key(nroa) references Ambulatorios(nroa)
);

create table Consultas(
codm int,
foreign key(codm) references Medicos(codm),
codp int,
foreign key(codp) references Pacientes(codp),
dataa date,
hora time
);

INSERT INTO Ambulatorios VALUES (1,'1','30');
INSERT INTO Ambulatorios VALUES (2,'1','50');
INSERT INTO Ambulatorios VALUES (3,'2','40');
INSERT INTO Ambulatorios VALUES (4,'2','25');
INSERT INTO Ambulatorios VALUES (5,'2','55');

select * from Ambulatorios;

INSERT INTO Medicos VALUES (1,'Joao','1980-01-01','Ortopedia','10000100000','Florianopolis',1);
INSERT INTO Medicos VALUES (2,'Maria','1981-02-02','traumatologia','10000110000','Blumenau',2);
INSERT INTO Medicos VALUES (3,'Pedro','1982-03-03','pediatria','11000100000','São José',5);
INSERT INTO Medicos VALUES (4,'Carlos','2000-04-04','ortopedia','11000110000','Joinville',4);
INSERT INTO Medicos VALUES (5,'Marcia','1999-05-03','neurologia','11000111000','Biguacu',3);

select * from Medicos;

INSERT INTO Pacientes VALUES (1,'Ana','1980-02-02','Florianopolis','20000200000','gripe');
INSERT INTO Pacientes VALUES (2,'Paulo','2000-01-24','Palhoca','20000220000','fratura');
INSERT INTO Pacientes VALUES (3,'Lucia','2001-12-30','Biguacu','22000200000','tendinite');
INSERT INTO Pacientes VALUES (4,'Carlos','2005-07-28','Joinville','11000110000','sarampo');

select * from Pacientes;

INSERT INTO Funcionarios VALUES (1,'Ana','2000-12-31','Sao Jose','1200','20000100000','Recepcionista',5);
INSERT INTO Funcionarios VALUES (2,'Maria','1999-12-29','Palhoca','1220','30000110000','Diretor',2);
INSERT INTO Funcionarios VALUES (3,'Caio','1980-10-10','Florianopolis','1200','41000100000','Enfermeiro',4);
INSERT INTO Funcionarios VALUES (4, 'Carlos', '2005-08-09','51000110000','Florianopolis','1200','Recepcionista', 3);
INSERT INTO Funcionarios VALUES (5, 'Paula','2006-09-08','61000111000','Florianopolis','2500','Enfermeiro', 5);

select * from Funcionarios;

INSERT INTO Consultas VALUES (1,1,'2006-06-12','14:00');
INSERT INTO Consultas VALUES (1,4,'2006-06-13','10:00');
INSERT INTO Consultas VALUES (2,1,'2006-06-13','9:00');
INSERT INTO Consultas VALUES (2,2,'2006-06-13','11:00');
INSERT INTO Consultas VALUES (2,3,'2006-06-14','14:00');
INSERT INTO Consultas VALUES (2,4,'2006-06-14','17:00');
INSERT INTO Consultas VALUES (3,1,'2006-06-19','18:00');
INSERT INTO Consultas VALUES (3,3,'2006-06-12','10:00');
INSERT INTO Consultas VALUES (3,4,'2006-06-19','13:00');
INSERT INTO Consultas VALUES (4,4,'2006-06-20','13:00');
INSERT INTO Consultas VALUES (4,4,'2006-06-22','19:30');

select * from Consultas;

--Alterando Ciadade da Tabela Pacientes
update Pacientes set cidade = 'Ilhota' where nome = 'Paulo';

--Alterando Doença da Tabela Pacientes
update Pacientes set doenca = 'Gastrite' where nome = 'Ana';

--Alterando Horarios Tabela consultas
update Consultas set hora = '12:00',dataa = '2006-07-14' where codm ='1' and codp = '4';

update Consultas set hora = '14:30' where codm = '3' and codp = '4';

--Deletando Funcionario da Tabela Funcionario
delete from Funcionarios where codf = '4';

--Deletando Horario da Tabela Consultas
delete from Consultas where hora > '19:00';

delete from Pacientes where doenca = 'Gastrite' OR DATEDIFF(YEAR, nasc, GETDATE()) < 10;

--Alterando a Tabela medico
delete from Medicos where cidade in ('Biguacu' ,'Palhoca');
