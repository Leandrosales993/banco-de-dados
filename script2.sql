show databases;
use dbinfox;
show tables;
create table tb_usuarios(
iduser int primary key,
usuario varchar(50) not null,
fone varchar(15),
login varchar (50) not null unique,
senha varchar(50) not null,
perfil varchar(50) not null
);
describe tb_usuarios;
insert into tb_usuarios(iduser, usuario, fone, login, senha, perfil)
values(1,'Leandro Oliveira','(11)91111-1111','leandro','123@senac','Administrador'
),(2,'Nicollas Henry','(11)92222-2222','nicollas','123@senac','Encarregado'),
(3,'Margarida da Paixão','(11)93333-3333','margarida','123@senac','CEO');
select * from tb_usuarios;


show tables;
use dbinfox;
create table tb_cliente(
idcli int primary key,
cpfcli varchar(15) unique,
nomecli varchar(50) not null,
cep varchar(9) not null,
tipo varchar(50) not null,
logradouro varchar(50) not null,
numero varchar(4) not null,
complemento varchar(50),
bairro varchar(50) not null,
cidade varchar(50) not null,
uf varchar(2) not null,
fone1 varchar(15) not null,
fone2 varchar(15),
emailcli varchar(50) not null
);
describe tb_cliente;
