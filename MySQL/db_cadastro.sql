### criando o banco de dados com padrões de caracteres e simbolos atualizados.

create database cadastro
default character set utf8
default collate utf8_general_ci;

### criando a tabela de pessoas
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

### inserindo dados
insert into tb_pessoas values (default, 'Samuel', '2009-07-03', 'M',' 75', '1.70', 'Brasil');

### adicionando uma coluna na tabela tb_pessoas
alter table tb_pessoas
add column profissao varchar(30);

### apagando uma coluna na tabela tb_pessoas
alter table tb_pessoas
drop column profissao;

### modificando dados da coluna profissao
alter table tb_pessoas
modify column profissao varchar(30);

### alterando o nome da coluna
alter table tb_pessoas 
change column profissao prof_pessoas varchar(30);

### modificando o nome da tabela
alter table tb_pessoas 
rename to pessoas;



