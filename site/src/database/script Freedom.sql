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
qtdPost int,
sexo char(1), check (sexo = "M" or sexo = "F" or sexo = "D")
);
create table post 
(
idPost int primary key auto_increment,
tittuloPost varchar(45),
dataPost date,
quemPostou int,
mangaDoPost int
)auto_increment = 100; 

create table manga
(
idManga int primary key auto_increment,
nomeManga varchar(45),
tipoManga varchar(45),
descricaoManga varchar(200),
imagemManga varchar(100),
quemCadastrou int
) auto_increment = 1000;

create table comentario
(
idComentario int primary key auto_increment,
nomeVisto varchar(45),
usuarioPostou int,
postComentado int
) auto_increment = 2000;

alter table manga add foreign key(quemCadastrou) references usuario(idUsuario);
alter table post add foreign key(quemPostou) references usuario (idUsuario);
alter table post add foreign key(mangaDoPost) references manga (idManga);
alter table comentario add foreign key(usuarioPostou) references usuario(idUsuario);
alter table comentario add foreign key(usuarioPostou) references post(idpost);