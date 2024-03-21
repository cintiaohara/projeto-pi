create database berryBite;

use berryBite;

create table cadastro
 (idCadastro int primary key auto_increment,
 razaoSocial varchar(45),
 cnpj varchar(20) constraint chkcnpj check (cnpj like '%.%.%/%-%'), 
 email varchar(45) constraint chkemail check (email like '%@%'),
 cep char(10), 
 telefone varchar(15));

create table umidade
 (idUmidade int primary key auto_increment,
 umidade float);



create table temperatura
 (idTemperatura int primary key auto_increment,
 temperatura float);


create table calculadora
 (id int primary key auto_increment,
 mediaProducao int,
 valorMorango int,
 perdaTemperatura int,
 perdaIrrigacao int,
 custoOperacional int,
 custoIrrigacao int);

 
 insert into cadastro values
 (null,'Empresa 1','12.345.678/0001-90','empresa1@empresa.com','01234-567',11987654321),
 (null,'Empresa 2','12.350.678/0002-10','empresa2@empresa.com','12345-678',11998877665);
 
 insert into umidade values
 (null, 40),
 (null, 67);
 
 insert into temperatura values
 (null, 22),
 (null, 24);
 
 
 insert into calculadora values
 (null,10000, 20, 150, 100, 200, 300),
 (null,20000, 20, 150, 100, 200, 300);
 
 select * from cadastro;

 select * from calculadora;
 
 select * from temperatura;

 select * from umidade;
 
 
 desc cadastro;

 show tables;  