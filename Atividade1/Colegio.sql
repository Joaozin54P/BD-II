Create database Colegio;
use Colegio;

create table Alunos(
matricula varchar(5) primary key,
nome varchar (50),
endereco varchar(30),
codcurso char(2),
FOREIGN KEY (codcurso) REFERENCES cursos(codcurso),
);

create table cursos(
codcurso char(2) primary key,
nome varchar(50),
coddisc1 char(2),
coddisc2 char(2),
coddisc3 char(2),
FOREIGN KEY (coddisc1) REFERENCES disciplinas(CodDisciplina),
FOREIGN KEY (coddisc2) REFERENCES disciplinas(CodDisciplina),
FOREIGN KEY (coddisc3) REFERENCES disciplinas(CodDisciplina),
);

create table disciplinas(
CodDisciplina char(2) primary key,
NomeDisciplina varchar(30)
);

INSERT INTO disciplinas VALUES (11, 'Banco de Dados');
INSERT INTO disciplinas VALUES (12, 'Lógica de Programação');
INSERT INTO disciplinas VALUES (13, 'Desenvolvimento de Solftware 1');
INSERT INTO disciplinas VALUES (21, 'Banco de dados 2');
INSERT INTO disciplinas VALUES (22, 'Desenvolvimento de Solftware 2');
INSERT INTO disciplinas VALUES (23, 'Programação de Computadores 1');
INSERT INTO disciplinas VALUES (31, 'Banco de Dados 3');
INSERT INTO disciplinas VALUES (32, 'Programação de Computadores 2');
INSERT INTO disciplinas VALUES (33, 'Desenvolvimento de Solftware 3');

select * from disciplinas;


INSERT INTO cursos VALUES (1, 'Auxiliar de Informática',11,12,13);
INSERT INTO cursos VALUES (2, 'Programador de Computadores',21,22,23);
INSERT INTO cursos VALUES (3, 'Técnico em Informática',31,32,33);

select * from cursos;


INSERT INTO Alunos VALUES ('1001', 'Marcos Moraes', 'Rua Pe Roque,2057', 1);
INSERT INTO Alunos VALUES ('1002', 'Maria Conceição Lopes', 'Rua Araras,23', 1);
INSERT INTO Alunos VALUES ('1003', 'Ana Carina Lopes', 'Rua Peraltas,222', 1);
INSERT INTO Alunos VALUES ('1004', 'Carlos Agular', 'Rua Botafogo,33', 1);
INSERT INTO Alunos VALUES ('1005', 'André Luiz dos Santos', 'Rua Lopes Conte,3343', 1);
INSERT INTO Alunos VALUES ('1006', 'Pedro Antonio Pimenta', 'Rua Altair Lopes,33', 2);
INSERT INTO Alunos VALUES ('1007', 'Rita deCássia daSilva', 'Rua Eletromais,33', 2);
INSERT INTO Alunos VALUES ('1008', 'Caique dos Santos', 'Rua das Amoreiras, 55', 2);
INSERT INTO Alunos VALUES ('1009', 'Carlos Tavares', 'Rua Peixe, 99', 2);
INSERT INTO Alunos VALUES ('1010', 'Antonio Carlos Caetano', 'Rua Josefina Alface, 987', 2);
INSERT INTO Alunos VALUES ('1011', 'Ricardo Moreira', 'Rua do Pinhal, 332', 3);
INSERT INTO Alunos VALUES ('1012', 'Richardson S. P. Campeao', 'Rua do Tricolor, 433', 3);
INSERT INTO Alunos VALUES ('1013', 'Junior Camisa Seis', 'Rua do Morumbi, 433', 3);
INSERT INTO Alunos VALUES ('1014', 'Carina Melo', 'Rua Osvaldo Ramos, 88', 3);
INSERT INTO Alunos VALUES ('1015', 'Pedro Mello', 'Rua Itororó. 3999', 3);

select * from Alunos;
