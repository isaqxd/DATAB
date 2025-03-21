# Exercicio

<p>create database db_exercicio_biblioteca;<br>
use db_exercicio_biblioteca;<br><br>

## -- Tabela Autores
create table Autores(<br>
	id_autor int auto_increment,<br>
	nome varchar(50) not null,<br>
	sobrenome varchar(50) not null,<br>
	nacional varchar(50) not null,<br>
	primary key (id_autor)<br>
);<br><br>

Alter table Autores<br>
change column nacional nacionalidade varchar(30) not null;<br>

## -- Tabela Categorias

create table Categorias(<br>
	id_categoria int auto_increment,<br>
    	descricao varchar(50) not null,<br>
    	primary key(id_categoria)<br>
);<br>

## -- Tabela Livros

create table Livros(<br>
	id_livro int auto_increment,<br>
	titulo varchar(100) not null,<br>
	AnoPublicacao year,<br>
	autor_id int,<br>
	primary key(id_livro)<br>
);<br>
</p>
