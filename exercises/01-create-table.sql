DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) NOT NULL,
    data_nascimento DATE NOT NULL,
    data_criacao TIMESTAMP DEFAULT (CURRENT_TIMESTAMP AT TIME ZONE 'America/Sao_Paulo')
);

INSERT INTO usuarios (nome, email, data_nascimento)
VALUES ('Ana Silva', 'ana@email.com', '2000-05-15');
INSERT INTO usuarios (nome, email, data_nascimento)
VALUES ('Leticia Souza', 'le@gmail.com', '2001-08-12');

SELECT * FROM usuarios;

SELECT nome, email FROM usuarios;