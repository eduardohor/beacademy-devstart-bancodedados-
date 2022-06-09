CREATE DATABASE db_store;

-- selecionar o banco --
USE db_store;

CREATE TABLE tb_category(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(100) NOT NULL
);

CREATE TABLE tb_product(
    id INT(11) NOT NULL PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(30) NOT NULL,
    description VARCHAR(100) NOT NULL,
    photo VARCHAR(255) NOT NULL,
    valor FLOAT(7,2) NOT NULL,
    categoria_id INT(11) NOT NULL,
    quantity INT(5) NOT NULL,
    created_at DATETIME NOT NULL
);

INSERT INTO tb_product(name, description, photo, valor, categoria_id, quantity, created_at)
VALUES
('Notebook Lenovo Ideapad', 'Notebook Lenovo Ideapad 3i Intel Celeron-N4020 4GB 128GB SSD Tela 15,6" Windows 11 - Prata', 'https://www.pexels.com/pt-br/foto/laptop-prateado-e-copo-branco-na-mesa-7974/', '2138.50', '1', '10', '2022-06-08 23:50:00' ),
('Caderno de Desenho', 'Caderno Espiral Meia Pauta Sapeca com 40 Folhas Tilibra', 'https://www.pexels.com/pt-br/foto/fotografia-de-caderno-de-desenho-em-branco-e-pinceis-1646981/', '9.90', '2', '50', '2022-06-08 23:57:00' ),
('SMART TV AOC', 'Smart TV LED 43" Full HD AOC ROKU TV FHD " Windows 11 - Prata', 'https://www.pexels.com/pt-br/foto/smart-tv-de-tela-plana-ligada-a-frente-1444416/', '1990.80', '3', '12', '2022-06-09 00:02:00' );


INSERT INTO tb_category(name, description)
VALUES
('Informática', 'Produtos de Informática e acessórios para computadores e notebooks'),
('Escritório', 'Canetas, Cadernos, Folhas, etc'),
('Eletrônicos', 'TVs, Som portátil, Caixa de som');
