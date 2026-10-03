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
    ('Leticia Souza', 'le@gmail.com', '2001-08-12', 77555333, 'Preto'),
    ('Carlos Oliveira', 'carlos@gmail.com', '1998-11-22', 11000111, 'Vermelho'),
    ('Mariana Costa', 'mari@outlook.com', '1995-04-03', 22444555, 'Verde'),
    ('Bruno Santos', 'bruno@hotmail.com', '1992-09-30', 33666777, 'Amarelo'),
    ('Gabriela Lima', 'gabi@email.com', '2003-01-18', 44888999, 'Rosa'),
    ('Rodrigo Pereira', 'rodrigo@gmail.com', '1989-07-25', 55111222, 'Branco'),
    ('Juliana Ribeiro', 'ju@outlook.com', '1997-12-05', 66333444, 'Roxo'),
    ('Felipe Almeida', 'felipe@hotmail.com', '2002-06-14', 99555666, 'Cinza'),
    ('Larissa Carvalho', 'lari@email.com', '1994-03-09', 12777888, 'Laranja');

SELECT nome, data_nascimento FROM usuarios
WHERE data_nascimento >= '2000-01-01'
ORDER BY data_nascimento ASC;
