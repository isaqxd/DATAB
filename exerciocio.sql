CREATE DATABASE BibliotecaDB;
USE BibliotecaDB;

-- Tabela Autores
CREATE TABLE Autores (
    id_autor INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    sobrenome VARCHAR(50) NOT NULL,
    nacionalidade VARCHAR(30)
);

-- Tabela Categorias
CREATE TABLE Categorias (
    id_categoria INT AUTO_INCREMENT PRIMARY KEY,
    descricao VARCHAR(50) NOT NULL
);

-- Tabela Livros
CREATE TABLE Livros (
    id_livro INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(100) NOT NULL,
    ano_publicacao YEAR,
    id_autor INT,
    id_categoria INT,
    CONSTRAINT fk_livro_autor FOREIGN KEY (id_autor) REFERENCES Autores(id_autor),
    CONSTRAINT fk_livro_categoria FOREIGN KEY (id_categoria) REFERENCES Categorias(id_categoria)
);


INSERT INTO Autores (nome, sobrenome, nacionalidade) VALUES
('João', 'Silva', 'Brasileiro'),
('Maria', 'Oliveira', 'Portuguesa'),
('Carlos', 'Santos', 'Brasileiro'),
('Ana', 'Pereira', 'Espanhola'),
('Pedro', 'Gomes', 'Argentino');

INSERT INTO Categorias (descricao) VALUES
('Ficção'),
('Não-Ficção'),
('História'),
('Ciência');

INSERT INTO Livros (titulo, ano_publicacao, id_autor, id_categoria) VALUES
('O Mistério do Lago', 2015, 1, 1),
('História do Brasil', 2018, 3, 3),
('A Ciência da Vida', 2020, 5, 4),
('Contos de Fadas', 2012, 2, 1),
('Memórias de um Viajante', 2019, 4, 2),
('A Revolução Industrial', 2017, 3, 3);

SELECT Autores.nacionalidade, Autores.nome, Autores.sobrenome
FROM Autores
WHERE Autores.nacionalidade = 'Brasileiro';

SELECT  Livros.titulo, Livros.ano_publicacao
From Livros
WHERE Livros.ano_publicacao > 2015;

SELECT Categorias.descricao
FROM Categorias
Where Categorias.descricao LIKE 'C%';

SELECT Livros.id_categoria, Categorias.id_categoria
FROM Livros
Where Livros.id_categoria = Categorias.id_categoria;
