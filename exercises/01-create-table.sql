DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    data_criacao TIMESTAMP DEFAULT (CURRENT_TIMESTAMP AT TIME ZONE 'America/Sao_Paulo'),
    cep INT NOT NULL
);

INSERT INTO usuarios (nome, email, data_nascimento, cep)
VALUES
    ('Ana Silva', 'ana@email.com', '2000-05-15', 88333222),
    ('Leticia Souza', 'le@gmail.com', '2001-08-12', 77555333);


SELECT * FROM usuarios;

SELECT nome, email, data_nascimento, cep FROM usuarios;

ALTER TABLE usuarios
    RENAME COLUMN data_criacao TO data_inscricao;
