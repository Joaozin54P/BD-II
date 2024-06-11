create database garagem;
use garagem;

create table Cliente(
cpf varchar(18) primary key,
nome varchar(60),
nasc date
);

create table Modelo(
codMod int primary key,
desc_mod varchar(40)
);

create table veiculo(
codMod int,
cpf varchar(18),
placa varchar(9) primary key,
cor varchar(30),
ano varchar(4),
foreign key(codMod) references Modelo(codMod),
foreign key(cpf) references Cliente(cpf)
);

create table Patio(
patio_num int primary key,
ender varchar(85),
capacidade int
);

create table Estaciona(
cod int primary key,
patio_num int,
foreign key(patio_num) references Patio(patio_num),
placa varchar(9),
foreign key(placa) references veiculo(placa),
dtEntrada date,
dtSaida date,
hsEntrada varchar(5),
hsSaida varchar(5),
);

-- Inserções na tabela Cliente
insert into Cliente values ('123.456.789-01', 'João Silva', '1990-05-15');
insert into Cliente values ('987.654.321-09', 'Maria Souza', '1985-10-20');
insert into Cliente values ('111.222.333-44', 'Carlos Oliveira', '1978-03-25');
insert into Cliente values ('555.666.777-88', 'Ana Santos', '2000-12-10');
insert into Cliente values ('999.888.777-66', 'Pedro Lima', '1995-08-02');
insert into Cliente values ('777.888.999-00', 'Fernanda Oliveira', '1980-07-18');
insert into Cliente values ('444.555.666-77', 'Rafaela Pereira', '1992-01-30');
insert into Cliente values ('222.333.444-55', 'Marcos Santos', '1988-09-05');
insert into Cliente values ('666.777.888-99', 'Lucas Ferreira', '1975-11-12');

select * from Cliente;

-- Inserções na tabela Modelo
insert into Modelo values (1, 'Sedan');
insert into Modelo values (2, 'Hatchback');
insert into Modelo values (3, 'SUV');
insert into Modelo values (4, 'Caminhonete');
insert into Modelo values (5, 'Esportivo');
insert into Modelo values (6, 'Picape');
insert into Modelo values (7, 'Minivan');
insert into Modelo values (8, 'Cupê');
insert into Modelo values (9, 'Conversível');

select * from Modelo;

-- Inserções na tabela veiculo
insert into veiculo values (1, '123.456.789-01', 'ABC-1234', 'Prata', '2018');
insert into veiculo values (2, '987.654.321-09', 'JEG-1010', 'Preto', '2000');
insert into veiculo values (3, '111.222.333-44', 'DEF-4321', 'Branco', '2019');
insert into veiculo values (4, '555.666.777-88', 'JJJ-2020', 'Azul', '2017');
insert into veiculo values (5, '999.888.777-66', 'JKL5-432', 'Vermelho', '2021');
insert into veiculo values (6, '777.888.999-00', 'MNO-6789', 'Verde', '2015');
insert into veiculo values (7, '444.555.666-77', 'PQR-1234', 'Amarelo', '2019');
insert into veiculo values (8, '222.333.444-55', 'STU-9876', 'Roxo', '2016');
insert into veiculo values (9, '666.777.888-99', 'VWX-3456', 'Laranja', '2020');

select * from veiculo;

-- Inserções na tabela Patio
insert into Patio values (1, 'Rua A, 123', 50);
insert into Patio values (2, 'Avenida B, 456', 30);
insert into Patio values (3, 'Rua C, 789', 40);
insert into Patio values (4, 'Avenida D, 321', 60);
insert into Patio values (5, 'Rua E, 654', 35);
insert into Patio values (6, 'Avenida F, 987', 25);
insert into Patio values (7, 'Rua G, 654', 45);
insert into Patio values (8, 'Avenida H, 321', 55);
insert into Patio values (9, 'Rua I, 789', 35);

select * from Patio;

-- Inserções na tabela Estaciona
insert into Estaciona values (1, 1, 'ABC-1234', '2024-05-01', '2024-05-14', '09:00', '10:30');
insert into Estaciona values (2, 2, 'JEG-1010', '2024-05-01', '2024-05-04', '10:30', '10:50');
insert into Estaciona values (3, 3, 'DEF-4321', '2024-05-01', '2024-05-09', '11:45', '12:00');
insert into Estaciona values (4, 4, 'JJJ-2020', '2024-05-05', '2024-05-15', '13:15', '13:25');
insert into Estaciona values (5, 5, 'JKL5-432', '2024-05-05', '2024-05-16', '14:45', '14:55');
insert into Estaciona values (6, 6, 'MNO-6789', '2024-05-06', '2024-05-07', '15:30', '10:30');
insert into Estaciona values (7, 7, 'PQR-1234', '2024-05-08', '2024-05-16', '16:45', '17:05');
insert into Estaciona values (8, 8, 'STU-9876', '2024-05-09', '2024-05-11', '17:15', '17:22');
insert into Estaciona values (9, 9, 'VWX-3456', '2024-05-18', '2024-05-20', '18:00', '01:00');

select * from Estaciona;

-- a. Exiba a placa e o nome dos donos de todos os veículos
select veiculo.placa,Cliente.nome from veiculo inner join Cliente on veiculo.cpf=Cliente.cpf;

-- b. Exiba o CPF e o nome do cliente que possui o veículo de placa “JJJ-2020”
select Cliente.cpf,Cliente.nome from Cliente inner join veiculo on Cliente.cpf=veiculo.cpf where veiculo.placa = 'JJJ-2020';

-- c. Exiba a placa e a cor do veículo que possui o código de estacionamento 1
select veiculo.placa, veiculo.cor from veiculo inner join Estaciona on veiculo.placa=Estaciona.placa where Estaciona.cod = 1;

-- d. Exiba o ano e a placa do veículo que possui o código de estacionamento 1
select veiculo.ano, veiculo.placa from veiculo inner join Estaciona on veiculo.placa= Estaciona.placa where Estaciona.cod = 1;

-- e. Exiba a placa, o ano do veículo e a descrição de seu modelo, se ele possuir ano a partir de 2000
select veiculo.placa, veiculo.ano, Modelo.desc_mod from veiculo inner join Modelo on veiculo.codMod = Modelo.codMod where veiculo.ano >= 2000;

-- f. Exiba o endereço, a data de entrada e de saída dos estacionamentos do veículo de placa “JEG-1010”
select Patio.ender, Estaciona.dtEntrada, Estaciona.dtSaida from Estaciona inner join Patio on Estaciona.patio_num = Patio.patio_num inner join veiculo on Estaciona.placa = veiculo.placa where veiculo.placa = 'JEG-1010';

-- g. Exiba a quantidade de vezes os veículos de cor verde estacionaram
select count(*) from veiculo inner join Estaciona on veiculo.placa=Estaciona.placa where veiculo.cor = 'Verde';

-- h. Liste todos os clientes que possuem carro de modelo 1
select distinct * from Cliente inner join veiculo on Cliente.cpf=veiculo.cpf where veiculo.codMod = 1;

-- i. Liste as placas, os horários de entrada e saída dos veículos de cor verde
select veiculo.placa,Estaciona.hsEntrada,Estaciona.hsSaida from veiculo inner join Estaciona on veiculo.placa=Estaciona.placa where veiculo.cor = 'Verde';

-- j. Liste todos os estacionamentos do veículo de placa “JJJ-2020”
select Estaciona.*,veiculo.placa from Estaciona inner join veiculo on Estaciona.placa=veiculo.placa  where veiculo.placa = 'JJJ-2020';

-- k. Exiba o nome do cliente que possui o veículo cujo código do estacionamento é 2
select Cliente.nome from Cliente inner join veiculo on Cliente.cpf=veiculo.cpf inner join Estaciona on veiculo.placa=Estaciona.placa where Estaciona.cod = 2;

-- l. Exiba o CPF do cliente que possui o veículo cujo código do estacionamento é 3
select Cliente.cpf from Cliente inner join veiculo on Cliente.cpf=veiculo.cpf inner join Estaciona on veiculo.placa=Estaciona.placa where Estaciona.cod = 3;

-- m. Exiba a descrição do modelo do veículo cujo código do estacionamento é 2
select Modelo.desc_mod from Modelo inner join veiculo on Modelo.codMod=veiculo.codMod inner join Estaciona on veiculo.placa=Estaciona.placa where Estaciona.cod = 2;

-- n. Exiba a placa, o nome dos donos e a descrição dos os modelos de todos os veículos
select veiculo.placa, Cliente.nome, Modelo.desc_mod from veiculo inner join Cliente on veiculo.cpf=Cliente.cpf inner join Modelo on veiculo.codMod=Modelo.codMod;