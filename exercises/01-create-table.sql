DROP TABLE IF EXISTS usuarios;

CREATE TABLE usuarios(
    id SERIAL PRIMARY KEY,
    nome VARCHAR(50) NOT NULL,
    email VARCHAR(50) UNIQUE NOT NULL,
    data_nascimento DATE NOT NULL,
    data_criacao TIMESTAMP DEFAULT (CURRENT_TIMESTAMP AT TIME ZONE 'America/Sao_Paulo'),
    cep INT NOT NULL,
    cor_favorita VARCHAR(50) NOT NULL
);

INSERT INTO usuarios (nome, email, data_nascimento, cep, cor_favorita)
VALUES
    ('Ana Silva', 'ana@email.com', '2000-05-15', 88333222, 'Azul'),
    ('Leticia Souza', 'le@gmail.com', '2001-08-12', 77555333, 'Preto');


SELECT * FROM usuarios;

SELECT nome, email, data_nascimento, cep FROM usuarios;


SELECT * FROM usuarios
    WHERE email = 'le@gmail.com';

