create database forumFreedom;
use forumFreedom;

create table usuario
(
idUsuario int primary key auto_increment, 
nomeUsuario varchar(45), 
nomePessoa varchar(45), 
email varchar(45), 
senha varchar(20), 
dataNasc date, 
qtdPost int
);
create table post 
(
idPost int primary key auto_increment

)auto_increment = 100; 

