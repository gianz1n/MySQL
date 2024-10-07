### criando o banco de dados com padrões de caracteres e simbolos atualizados.

create database cadastro
default character set utf8
default collate utf8_general_ci;

create table tb_pessoas(
id int not null auto_increment,
nome_pessoas varchar(30) not null,
nascimento_pessoas date,
sexo_pessoas enum('M', 'F'),
peso_pessoas decimal(5,2),
altura_pessoas decimal (3,2),
nacionalidade_pessoas varchar(20) default 'Brasil',
primary key(id)
) default charset = utf8;

insert into tb_pessoas values (default, 'Samuel', '2009-07-03', 'M',' 75', '1.70', 'Brasil');

select * from tb_pessoas;


