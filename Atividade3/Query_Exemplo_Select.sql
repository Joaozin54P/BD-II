-- criar bd Exemplo_Select
CREATE DATABASE Exemplo_Select;

-- abrir bd Exemplo_Select
use Exemplo_Select;

-- criação tabela Categoria
CREATE TABLE Categoria
(
Cod_Categoria int,
Nome_Categoria varchar (15) NOT NULL,
Descricao varchar(25) NULL,
PRIMARY KEY (Cod_Categoria)
 );

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (1,'Beverages','Soft drinks');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (2,'Condiments','Sweet and savory sauces');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (3,'Confections','candies');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (4,'Dairy Products','Cheeses');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (5,'Grains/Cereals','cereal');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (6,'Meat/Poultry','Prepared meats');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (7,'Produce','Dried fruit and bean curd');

INSERT into categoria (Cod_categoria,Nome_categoria,descricao) 
VALUES (8,'Seafood','Seaweed and fish');

select * from categoria;

CREATE TABLE Envio
 (
	Cod_Envio int,
 	DataEnvio datetime,
  	Frete int,
	NomeNavio varchar(40),
 	Cidade varchar(15),
	Regiao varchar(15),
 	Pais varchar(15)
 );


INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10248,'7/4/1996',32.38,'Vins et alcools Chevalier','Abbaye','Reims','France');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10249,'7/5/1996',11.61,'Toms Spezialitaten','Luisenstr',nULL,'Germany');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10250,'7/8/1996',65.83,'Hanari Carnes','Rio de Janeiro','Sudeste','Brazil');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10251,'7/8/1996',41.34,'Victuailles en stock','Lyon',NULL,'France');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10252,'7/9/1996',51.30,'Supremes delices','Boulevard Tirou', 'Charleroi','Belgium');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10253,'7/10/1996',58.17,'Hanari Carnes','Rio de Janeiro','Sudeste','Brazil');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
vALUES (10254,'7/11/1996',22.98,'Chop-suey Chinese','Bern',NULL,'Switzerland');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10255,'7/12/1996',148.33,'Richter Supermarkt','Geneve',	NULL,'Switzerland');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10256,'15/7/1996',13.97,'Wellington Importadora','Resende','Sul','Brazil');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10257,'8/8/1996',81.91,'HILARION-Abastos','San Cristobal','Tachira','Venezuela');

INSERT INTO Envio (Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais)
VALUES (10258,'17/7/1996',140.51,'Ernst Handel','Kirchgasse','Graz','Austria');


select * from Envio;


CREATE TABLE Territorio
(
       Cod_Territorio varchar(20) NOT NULL,
       Territoriodescricao varchar(50) NOT NULL,
       Cod_Regiao int
);


Insert Into Territorio Values ('01581','Westboro',1);
Insert Into Territorio Values ('01730','Bedford',1);
Insert Into Territorio Values ('01833','Georgetow',1);
Insert Into Territorio Values ('02116','Boston',1);
Insert Into Territorio Values ('02139','Cambridge',1);
Insert Into Territorio Values ('02184','Braintree',1);
Insert Into Territorio Values ('02903','Providence',1);
Insert Into Territorio Values ('03049','Hollis',3);
Insert Into Territorio Values ('03801','Portsmouth',3);
Insert Into Territorio Values ('06897','Wilton',1);
Insert Into Territorio Values ('07960','Morristown',1);
Insert Into Territorio Values ('08837','Edison',1);
Insert Into Territorio Values ('10019','New York',1);
Insert Into Territorio Values ('10038','New York',1);
Insert Into Territorio Values ('11747','Mellvile',1);
Insert Into Territorio Values ('14450','Fairport',1);
Insert Into Territorio Values ('19428','Philadelphia',3);
Insert Into Territorio Values ('19713','Neward',1);
Insert Into Territorio Values ('20852','Rockville',1);
Insert Into Territorio Values ('27403','Greensboro',1);
Insert Into Territorio Values ('27511','Cary',1);
Insert Into Territorio Values ('29202','Columbia',4);
Insert Into Territorio Values ('30346','Atlanta',4);
Insert Into Territorio Values ('31406','Savannah',4);
Insert Into Territorio Values ('32859','Orlando',4);
Insert Into Territorio Values ('33607','Tampa',4);
Insert Into Territorio Values ('40222','Louisville',1);
Insert Into Territorio Values ('44122','Beachwood',3);
Insert Into Territorio Values ('45839','Findlay',3);
Insert Into Territorio Values ('48075','Southfield',3);
Insert Into Territorio Values ('48084','Troy',3);
Insert Into Territorio Values ('48304','Bloomfield Hills',3);
Insert Into Territorio Values ('53404','Racine',3);
Insert Into Territorio Values ('55113','Roseville',3);
Insert Into Territorio Values ('55439','Minneapolis',3);
Insert Into Territorio Values ('60179','Hoffman Estates',2);
Insert Into Territorio Values ('60601','Chicago',2);
Insert Into Territorio Values ('72716','Bentonville',4);
Insert Into Territorio Values ('75234','Dallas',4);
Insert Into Territorio Values ('78759','Austin',4);
Insert Into Territorio Values ('80202','Denver',2);
Insert Into Territorio Values ('80909','Colorado Springs',2);
Insert Into Territorio Values ('85014','Phoenix',2);
Insert Into Territorio Values ('85251','Scottsdale',2);
Insert Into Territorio Values ('90405','Santa Monica',2);
Insert Into Territorio Values ('94025','Menlo Park',2);
Insert Into Territorio Values ('94105','San Francisco',2);
Insert Into Territorio Values ('95008','Campbell',2);
Insert Into Territorio Values ('95054','Santa Clara',2);
Insert Into Territorio Values ('95060','Santa Cruz',2);
Insert Into Territorio Values ('98004','Bellevue',2);
Insert Into Territorio Values ('98052','Redmond',2);
Insert Into Territorio Values ('98104','Seattle',2);

select * from Territorio;

-- Listar todos os campos da tabela TERRITORIO por ordem descendente do campo COD_REGIAO
select * from Territorio order by Cod_Regiao desc;

-- Listar todos os campos da tabela ENVIO por ordem ascendente do campo FRETEselect * from Envio order by Frete;

-- Listar os campos NOMENAVIO e CIDADE e REGIAO
select NomeNavio,Cidade,Regiao from Envio;

-- Listar os campos NOME_CATEGORIA e DESCRICAO
select Nome_Categoria,Descricao from Categoria;

-- Apresente a soma de todos os CÓD_CATEGORIA
select sum(Cod_Categoria) from Categoria;

-- Apresente a soma de todos os COD_ENVIO
select sum(Cod_Envio) from Envio;

-- Apresente a soma de todos os FRETESselect sum(Frete) from Envio;

-- Apresente a soma de todos os COD_REGIAO
select sum(Cod_Regiao) from Territorio;

-- Apresente o maior FRETE
select max(Frete) from Envio;

-- Apresente o menor FRETE
select min(Frete) from Envio;

--  Apresente o maior CÓD_CATEGORIA
select max(Cod_Categoria) from Categoria;

--  Apresente o menor CÓD_CATEGORIA
select min(Cod_Categoria) from Categoria;

-- Apresente o maior COD_ENVIOselect max(Cod_Envio) from Envio;

-- Apresente o menor COD_ENVIOselect min(Cod_Envio) from Envio;

-- Apresente o maior COD_REGIAO
select max(Cod_Regiao) from Territorio;

-- Apresente o menor COD_REGIAO
select min(Cod_Regiao) from Territorio;

-- Apresente a média de todos os FRETESselect avg(Frete) from Envio;-- Apresente a média do CÓD_CATEGORIAselect avg(Cod_Categoria) from Categoria;-- Apresente a média do COD_ENVIOselect avg(Cod_Envio) from Envio;-- Apresente a média do COD_REGIAOselect avg(Cod_Regiao) from Territorio;-- Apresente todos os territórios da região 2select * from Territorio where Cod_Regiao =2;-- Apresente todos os territórios da região 2 e 3select * from Territorio where Cod_Regiao between 2 and 3;-- Apresente todos os territórios cuja descrição comece com a letra “S”select Cod_Territorio,Territoriodescricao,Cod_Regiao from Territorio where Territoriodescricao like 's%';-- Apresente todos os territórios cujo código comece com o número “7”select Cod_Territorio,Territoriodescricao,Cod_Regiao from Territorio where Cod_Territorio like '7%';-- Apresente todos os envios para o “Brazil"select Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais from Envio where Pais like 'Brazil';-- Apresente todos os envios dos fretes maiores que “50”select * from Envio where Frete >50;-- Apresente todas os envios das regiões “NULAS”select Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais from Envio where Regiao is null;-- Apresente todos os envios do mês de “agosto”select Cod_Envio, DataEnvio, Frete, NomeNavio, Cidade, Regiao, Pais from Envio where month(DataEnvio) = 8;

-- Apresente todos os envios cujo código estiver entre “10250” a “10256”select * from Envio where Cod_Envio between 10250 and 10256;
-- Apresente todos os envios cuja cidade comece com a letra “R”
select Cod_Envio,DataEnvio,Frete,NomeNavio,Cidade,Regiao,Pais from Envio where Cidade like 'r%';-- Apresente todas as categorias, exceto o “cereal”select Cod_Categoria,Nome_Categoria, Descricao from Categoria where Descricao <> 'cereal';

-- Apresente todas as categorias com código menor que “5”
select * from Categoria where Cod_Categoria <5;
-- Apresente a quantidade de envios para a “Germany”
select count(*) from Envio where Pais = 'Germany';

-- Apresente a quantidade de envios para o “Rio de Janeiro”
select count(*) from Envio where Cidade = 'Rio de Janeiro';

-- Apresente a ocorrência dos fretes
select Frete, COUNT(*) from Envio group by Frete;

-- Apresente a quantidade de envios para a região “Sudeste”select count(*) from Envio where Regiao = 'Sudeste';-- Apresente as ocorrências dos COD_ENVIOselect Cod_Envio, COUNT(*) from Envio group by Cod_Envio;

-- Apresente todos os envios, exceto para a região “Null”
select Cod_Envio, DataEnvio, Frete, NomeNavio, Cidade, Regiao, Pais from Envio where Regiao <> 'is null';

-- Apresente a quantidade de territórios da região “2”select COUNT(*) from Territorio where Cod_Regiao = 2;

-- Apresente a quantidade de territórios da região “4”select COUNT(*) from Territorio where Cod_Regiao = 4;

-- Apresente todos os territórios da região = “2” cuja descrição comece com a letra “S”
select * from Territorio where Cod_Regiao = 2 and Territoriodescricao like 's%';

-- Apresente todos os envios das cidades: “Bern,Lyon,Resende” ====== B E R N
select * from Envio where Cidade in('Bern','Lyon','Resende');

-- Apresente todos os envios exceto das cidades: “Bern,Lyon,Resende” ====== B E R N
select * from Envio where Cidade not in('Bern','Lyon','Resende');

-- Eliminar regiões duplicados da tabela “território” (distinct)select distinct Cod_Regiao,Territoriodescricao from Territorio;

-- Selecionar todos os envios do mês de julho
select Cod_Envio, DataEnvio, Frete, NomeNavio, Cidade, Regiao, Pais from Envio where month(DataEnvio)= 7 ;

-- Selecionar todos os envios do dia 08/08/1996
select Cod_Envio, DataEnvio, Frete, NomeNavio, Cidade, Regiao, Pais from Envio where day(DataEnvio) = 08 and month(DataEnvio)= 8 and year(DataEnvio) = 1996;

-- Selecionar todos os envios do último bimestre do ano de 1996
select Cod_Envio, DataEnvio, Frete, NomeNavio, Cidade, Regiao, Pais from Envio where year(DataEnvio) = 1996;