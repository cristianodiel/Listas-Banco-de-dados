create database revendedora_carros;
use revendedora_carros;
create table automovel(
renavam char(13) primary key,
placa char(7) not null unique,
marca varchar(40) not null,
modelo varchar(40) not null,
ano_de_fabricacao int not null,
cor varchar(40) not null,
motor varchar(40),
numero_de_portas smallint not null,
tipo_de_combustivel set('gasolina','alcool', 'diesel','gnv') not null,
preco int not null
);
create table cliente(
id_cliente int primary key,
nome varchar(40) not null,
sobrenome varchar(40) not null,
telefone char(10) not null,
rua varchar(40) not null,
endereço_numero smallint not null,
complemento varchar(40) not null,
bairro varchar(40) not null,
cidade varchar(40) not null,
estado varchar(40) not null,
cep varchar(8) not null
);
create table vendedor(
id_vendedor int primary key,
nome varchar(40) not null,
sobrenome varchar(40) not null,
telefone char(10) not null,
rua varchar(40) not null,
endereço_numero smallint not null,
complemento varchar(40) not null,
bairro varchar(40) not null,
cidade varchar(40) not null,
estado varchar(40) not null,
cep varchar(8) not null,
data_admissao date not null,
salario_fixo int not null
);
create table negocio(
data_negocio date not null,
preco_pago int not null,
cliente_fk int unique not null,
vendedor_fk int unique not null,
renavam_fk char(13) unique not null,
primary key (cliente_fk,vendedor_fk,renavam_fk),
foreign key (cliente_fk) references cliente(id_cliente),
foreign key (vendedor_fk) references vendedor(id_vendedor),
foreign key (renavam_fk) references automovel(renavam)

);