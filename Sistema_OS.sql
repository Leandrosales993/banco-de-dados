show databases;
drop database dbinfox;
create database dbinfox;
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


create table tb_cliente(
idcli int auto_increment primary key,
cpfcli varchar(15) unique,
nomecli varchar(50) not null,
cep varchar(9) not null,
tipo1 varchar(50) not null,
logradouro varchar(50) not null,
numero varchar(4) not null,
complemento varchar(50),
bairro varchar(50) not null,
cidade varchar(50) not null,
uf char(2) not null,
fone1 varchar(15) not null,
fone2 varchar(15),
emailcli varchar(50) not null
);
describe tb_cliente;

insert into tb_cliente(idcli,nomecli,cep,tipo1,logradouro,numero,bairro,cidade,uf,fone1,fone2,emailcli)
values (null, 'Carlos Silva','01111-111','Rua','Castilho','10','Cabuci','São Paulo','SP','1111-1111',null,'carlos@gmail.com'),
(null, 'Fabricio Mendes','02222-222','Rua','Kawasaki','300','Belém','São Paulo','SP','2222-2222',null,'fabricio@gmail.com'),
(null, 'Marcio','03333-333','Avenida','Alfavile','5','Liberdade','São Paulo','SP','3333-3333',null,'marcio@gmail.com'),
(null, 'Augusto Marquez','04444-444','Rua','Santa Catarina','1','Jabaquara','São Paulo','SP','4444-4444',null,'augusto@gmail.com'),
(null, 'Bruna','05555-555','Avenida','Magnum','45','Sé','São Paulo','SP','5555-5555',null,'bruna@gmail.com'),
(null, 'Leandro Oliveira Sales','06666-666','Avenida','Giovani Luis','300','Jardim Miriam','São Paulo','SP','6666-6666',null,'leandro@gmail.com');

select * from tb_cliente;

show tables;
create table tb_os(
idos int auto_increment primary key,
data_os timestamp default current_timestamp,
tipo varchar(15) not null,
situacao varchar(20) not null,
equipamento varchar(200) not null,
defeito varchar (200) not null,
servico varchar (200),
tecnico varchar (200),
valor decimal(10,2),
idcli int not null
);

ALTER TABLE tb_os auto_increment = 10000;

describe tb_os;
insert into tb_os(idos, valor, tipo, situacao, equipamento, defeito, servico, tecnico, idcli)
values(null,120.00,'sim','arrumado','Notebook Itautec','Systema Operacional corrompido','Instalado Sistema Operacional','Lucas',1),
(null,430.00,'sim','arrumado','Computador Dell','HD queimado','troca de HD','Carlos Almeida',2),
(null,50.00,'sim', 'arrumado','Computador Positivo','pasta termica do Processador está seca','aplicação da pasta termica no processador','Thiago',3);

select * from tb_os;

alter table tb_os add constraint cliente_os
foreign key(idcli)
references tb_cliente(idcli)
on delete no action;

select
X.idos as OS, data_os as Data1, tipo as Tipo,situacao as Situacao,
equipamento as Equipamento, defeito as Defeito, servico as Servico, tecnico as Tecnico,
valor as Valor,
Y.nomecli as Nome, fone1 as Fone, emailcli as Email
from tb_os as X
inner join tb_cliente as Y on (X.idcli = Y.idcli);

describe tb_os;