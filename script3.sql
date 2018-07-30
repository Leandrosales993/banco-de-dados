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
uf char(2) not null,
fone1 varchar(15) not null,
fone2 varchar(15),
emailcli varchar(50) not null
);
describe tb_cliente;

insert into tb_cliente(idcli,nomecli,cep,tipo,logradouro,numero,bairro,cidade,uf,fone1,emailcli)
values (null, 'Carlos Silva','01111-111','Rua','Castilho','10','Cabuci','São Paulo','SP','1111-1111','carlos@gmail.com'),
(null, 'Fabricio Mendes','02222-222','Rua','Kawasaki','300','Belém','São Paulo','SP','2222-2222','fabricio@gmail.com'),
(null, 'Marcio','03333-333','Avenida','Alfavile','5','Liberdade','São Paulo','SP','3333-3333','marcio@gmail.com'),
(null, 'Augusto Marquez','04444-444','Rua','Santa Catarina','1','Jabaquara','São Paulo','SP','4444-4444','augusto@gmail.com'),
(null, 'Bruna','05555-555','Avenida','Magnum','45','Sé','São Paulo','SP','5555-5555','bruna@gmail.com');

select * from tb_cliente;

use assisti2;
select * from tb_os;

-- alterando uma tabela 
-- Adicionando uma coluna que será usada como chave estrangeira

alter table tb_os add idcli int;

select * from tb_os;

-- Removendo uma coluna da tabela

alter table tb_os drop column idcli;

alter table tb_os add idcli int not null;

select * from tb_os;

delete from tb_os where idos = 1000;


-- Criando um relacionamento do tipo 1 ---- N entre a tabela clientes e os 
-- Constraint cria o relacionamento
-- cliente_os (nome do relacionamento)
-- foreign key (coluna) (transforma a coluna em chave estrangeira)
-- references (referencia a chave primária da tabela pai)
-- on delete no action (integridade dos dados)

alter table tb_os add constraint cliente_os
foreign key (idcli)
references tb_clientes (idcli)
on delete no action;

describe tb_os;







