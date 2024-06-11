create database loja_musica;
use loja_musica;

create table Cds(
codigo_cd int primary key,
Nome_cd varchar(50),
DataCompra date,
ValorPago float,
LocalCompra varchar(55),
Album varchar(3)
);

create table Musicas(
codigo_cd int,
Numero_musica int,
Nome_musica varchar(50),
Artista varchar(50),
Tempo time
foreign key(codigo_cd) references Cds(codigo_cd)
);

insert into Cds values (1,'Born Pink','25-12-2022','675.12','Amazon','Sim');
insert into Cds values (2,'BABYMONS7ER','03-04-2024','149.00','KoreanSSamba','Sim');
insert into Cds values (3,'Ready To Be','10-03-2023','480.00','Amazon','Sim');
insert into Cds values (4,'Drama','10-11-2023','315.00','Amazon','Sim');
insert into Cds values (5,'The Album','02-10-2020','675.12','K-Line Store','Sim');
insert into Cds values (6,'Zé Zé De Camargo','02-10-2000','01.50','Submarino','Não');

select * from Cds;

insert into Musicas values (1,'7', 'Tally', 'BLACKPINK', '0:03:05');
insert into Musicas values (1,'2','Shut Down', 'BLACKPINK', '0:02:56');
insert into Musicas values (1,'1','Pink Venom', 'BLACKPINK', '0:03:07');
insert into Musicas values (2,'1','SHEESH', 'BABYMONSTER', '0:02:51');
insert into Musicas values (2,'2','LIKE THAT', 'BABYMONSTER', '0:02:49');
insert into Musicas values (3,'6','CRAZY STUPID LOVE', 'TWICE', '0:02:51');
insert into Musicas values (3,'5','WALLFLOWER', 'TWICE', '0:02:57');
insert into Musicas values (4,'1','Drama', 'Aespa', '0:03:35');
insert into Musicas values (4,'3','Don’t Blink', 'Aespa', '0:02:50');
insert into Musicas values (4,'6','You', 'Aespa', '0:03:22');
insert into Musicas values (5,'3','Pretty Savage', 'BLACKPINK', '0:03:20');
insert into Musicas values (5,'6','Crazy Over You', 'BLACKPINK', '0:02:42');
insert into Musicas values (5,'4','Bet You Wanna', 'BLACKPINK', '0:02:40');
insert into Musicas values (5,'7','Love To Hate Me', 'BLACKPINK', '0:02:50');
insert into Musicas values (5,'8','You Never Know', 'BLACKPINK', '0:03:50');
insert into Musicas values (6,'1','Virgem', 'José Pedro', '0:01:50');

select * from Musicas;

--Mostrar todos os cds
select * from Cds;

--Mostrar os campos nome e data da compra dos cds ordenados por nome
select Nome_cd,DataCompra from Cds order by Nome_cd;

--Mostrar os campos nome e data da compra dos cds classificados por data de compra em ordem decrescente
select Nome_cd,DataCompra from Cds order by DataCompra desc;

--Mostrar os campos nome, data da compra e preço dos cds classificados por preço em ordem decrescenteselect Nome_cd,DataCompra,ValorPago from Cds order by ValorPago desc;

--Mostrar o total gasto com a compra dos Cds
select sum(ValorPago) from Cds;

--Mostrar todas as músicas (todos os campos) do cds código 1
select * from Musicas where codigo_cd = 1;

--Mostre o nome da música e o artista de todas músicas cadastradasselect Nome_musica,Artista from Musicas;--Mostre o número, nome e tempo das músicas do cd 5 em ordem de númeroselect Numero_musica,Nome_musica,Tempo from Musicas where codigo_cd = 5 order by Numero_musica;--Mostre a quantidade de músicas cadastradas (total)select count(Numero_musica) from Musicas;--Mostre o nome das músicas do artista José Pedroselect Nome_musica from Musicas where Artista = 'José Pedro';--Mostre o nome de todos cds comprados no Submarinoselect Nome_cd from Cds where LocalCompra = 'Submarino';--Mostre uma listagem de músicas em ordem alfabéticaselect * from Musicas order by Nome_musica;--Mostrar todos os cds que são álbunsselect * from Cds where Album = 'Sim';--Mostrar a média de preços dos cdsselect avg(ValorPago)  from Cds;--(Subquery) Mostre o cd que custou mais caroselect * from Cds where ValorPago = (select max(ValorPago) from Cds);

-- (Inner Join) Mostrar o nome do Cd e o nome das músicas de todos Cds
select Cds.Nome_cd,Musicas.Nome_musica from Cds inner join Musicas on Cds.codigo_cd = Musicas.Numero_musica;

-- (Inner Join) Mostre o nome do cd e o nome da primeira música de cada cd
select Cds.Nome_cd, Musicas.Nome_musica from Cds inner join Musicas on Cds.codigo_cd = Musicas.codigo_cd where Musicas.Numero_musica = 1;
