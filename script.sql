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
