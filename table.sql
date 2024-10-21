INSERT INTO Raridade(Tipo_Raridade)
VALUES ("Comum"),
("Incomum"),
("Raro");

INSERT INTO Classe (Nome_classe, Vida, Velocidade, Inteligencia)
VALUES ("Guerreiro", 200, 30, 10),
("Mago", 100, 20, 100),
("Elfo", 150, 80, 5);

INSERT INTO Habilidade(Nome_habilidade, Dano, Tempo_Recarga)
VALUES ("Ataque Trovão", 150, 30),
("Rouba Vida", 100, 50),
("Dash", 0, 10);

INSERT INTO Conta(Username, Senha, Email, Telefone, Personagens)
VALUES ("Leozin_PVP", "eoleoneeeeh", "leo@email.com", "99999999", 2),
("Viniso_Pro", "wukong123", "viniso@email.com", "88888888", 1),
("Gabilouco", "Palmeirass118", "gabloko@email.com", "77777777", 3);

INSERT INTO Tipo_Equipamento(Nome_tipo_equipamento, Qtd_municao, Dano, Raridade)
VALUES ("Arco", 1, 50 ,1),
("Armadura", 0, 0, 3 ),
("Espada", 1, 100, 2);

INSERT INTO Equipamento(Tipo_equipamento, Nome_equipamento)
VALUES (3, "Espada Argolo"),
(1, "Arco Garden"),
(2, "Peitoral Figueirinha");

INSERT INTO Inventario(Equipamento, Personagem, Qtd)
VALUES (3, 1, 5),
(2, 2, 10),
(1, 3, 1);

INSERT INTO Personagem (Nome_Personagem, Classe, Inventario, Habilidades)
VALUES ("Josué caminhoneiro", 2, 1, 3),
("Manoel Gomes", 1, 2 , 2);
