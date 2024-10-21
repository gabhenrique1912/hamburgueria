CREATE DATABASE Rpg;

CREATE TABLE Raridade (
Id_raridade INT PRIMARY KEY AUTO_INCREMENT,
Tipo_raridade VARCHAR(20) NOT NULL
);

CREATE TABLE Classe (
Id_classe INT PRIMARY KEY AUTO_INCREMENT,
Nome_classe VARCHAR(20) NOT NULL,
Vida INT NOT NULL,
Velocidade INT NOT NULL,
Inteligencia INT NOT NULL
);

CREATE TABLE Habilidade (
Id_habilidade INT PRIMARY KEY AUTO_INCREMENT,
Nome_habilidade VARCHAR(20) NOT NULL,
Dano INT NOT NULL,
Tempo_recarga INT NOT NULL
);

CREATE TABLE Tipo_equipamento (
Id_tipo_equipamento INT PRIMARY KEY AUTO_INCREMENT,
Nome_tipo_equipamento VARCHAR(20) NOT NULL,
Qtd_municao INT NOT NULL,
Dano INT NOT NULL,
Raridades INT NOT NULL,
FOREIGN KEY (Raridades) REFERENCES Raridade (Id_raridade)
);

CREATE TABLE Equipamento (
Id_equipamento INT PRIMARY KEY AUTO_INCREMENT,
Tipo_equipamento INT NOT NULL,
Nome_equipamento VARCHAR(20) NOT NULL,
FOREIGN KEY (Tipo_equipamento) REFERENCES Tipo_equipamento (Id_tipo_equipamento)
);

CREATE TABLE Inventario (
Equipamento INT NOT NULL,
Personagem INT NOT NULL,
Qtd INT NOT NULL
);

CREATE TABLE Personagem (
Id_personagem INT PRIMARY KEY AUTO_INCREMENT,
Nome_personagem VARCHAR (20) NOT NULL,
Classe INT NOT NULL,
Inventario INT NOT NULL,
Habilidades INT NOT NULL,
FOREIGN KEY (Classe) REFERENCES Classe (Id_classe),
FOREIGN KEY (Habilidades) REFERENCES Habilidade (Id_habilidade)
);

CREATE TABLE Conta (
Id_conta INT PRIMARY KEY,
Username VARCHAR(30) NOT NULL,
Senha VARCHAR(16) NOT NULL,
Email VARCHAR(50) NOT NULL,
Telefone INT,
Personagens INT NOT NULL,
FOREIGN KEY (Personagens) REFERENCES Personagem(Id_personagem)
);
