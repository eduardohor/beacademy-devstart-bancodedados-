-- Para criar um banco de dados -- 
CREATE DATABASE db_escola;

-- selecionar o banco de dados --
USE db_escola;

-- criar tabela --

CREATE TABLE tb_professor (
    id INT(11) PRIMARY KEY AUTO_INCREMENT,
    nome VARCHAR(100)  NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL
);

-- Excluir tabela --
DROP TABLE tb_professor;


CREATE TABLE tb_aluno (
    nome VARCHAR(100) NOT NULL,
    cpf CHAR(11) UNIQUE NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    matricula VARCHAR(10) UNIQUE NOT NULL
);

-- inserir na tabela --

INSERT INTO tb_professor (nome, email, cpf)
VALUES (
    'Alessandro', 'ale@email.com', '12345678911'
);

INSERT INTO tb_professor (nome, email, cpf)
VALUES (
    'Bruno', 'bruno@email.com', '11122233345'
);

-- Selecionar dados--
SELECT * FROM tb_professor;
