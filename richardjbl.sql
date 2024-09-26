CREATE TABLE Usuarios (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(255) NOT NULL,
    email VARCHAR(255) NOT NULL,
    senha VARCHAR(255) NOT NULL
);

CREATE TABLE Artistas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    genero VARCHAR(50)
);

CREATE TABLE Playlists (
    id INT AUTO_INCREMENT PRIMARY KEY,
    usuario_id INT,
    nome VARCHAR(100) NOT NULL,
    descricao VARCHAR(255) NOT NULL,
    FOREIGN KEY (usuario_id) REFERENCES Usuarios(id) ON DELETE CASCADE
);

CREATE TABLE Musicas (
    id INT AUTO_INCREMENT PRIMARY KEY,
    titulo VARCHAR(255) NOT NULL,
    artista_id INT,
    FOREIGN KEY (artista_id) REFERENCES Artistas(id) ON DELETE CASCADE
);


INSERT INTO Usuarios (nome, email, senha) VALUES
('Joao Pinto', 'joaopinto@example.com', 'senha962'),
('Whisleno Silva', 'whislenosilva@example.com', 'senha039'),
('Arthur Zimma', 'arthurzimma@example.com', 'senha402'),
('Caua Richard', 'cauarichard@example.com', 'senha031'),
('Leanderson Jose', 'leandersonjose@example.com', 'senha192');

INSERT INTO Artistas (nome, genero) VALUES
('Artista A', 'Funk'),
('Artista B', 'Rock'),
('Artista C', 'Trap'),
('Artista D', 'Pagode'),
('Artista E', 'Eletrônica');

INSERT INTO Playlists (usuario_id, nome, descricao) VALUES
(1, 'Minhas Favoritas', 'Playlist com minhas músicas favoritas'),
(2, 'Funk ', 'Playlist de funk'),
(3, 'Rock Metal', 'Playlist de rock metal'),
(4, 'Eletrônica Vibes', 'Melhores músicas de eletrônica'),
(5, 'Dance Hits', 'os melhores pagode para dançar');

INSERT INTO Musicas (titulo, artista_id) VALUES
('Música 1', 1),
('Música 2', 1),
('Música 3', 2),
('Música 4', 3),
('Música 5', 4),
('Música 6', 5),
('Música 7', 1),
('Música 8', 2),
('Música 9', 3),
('Música 10', 4);

SHOW VARIABLES LIKE 'datadir';
