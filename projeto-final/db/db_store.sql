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
    value FLOAT(7,2) NOT NULL,
    category_id INT(11) NOT NULL,
    quantity INT(5) NOT NULL,
    created_at DATETIME NOT NULL
);

INSERT INTO tb_product(name, description, photo, value, category_id, quantity, created_at)
VALUES
('Notebook Lenovo Ideapad', 'Notebook Lenovo Ideapad 3i Intel Celeron-N4020 4GB 128GB SSD Tela 15,6" Windows 11 - Prata', 'https://images.pexels.com/photos/7974/pexels-photo.jpg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', '2138.50', '1', '10', '2022-06-08 23:50:00' ),
('Caderno de Desenho', 'Caderno Espiral Meia Pauta Sapeca com 40 Folhas Tilibra', 'https://images.pexels.com/photos/1646981/pexels-photo-1646981.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1', '9.90', '2', '50', '2022-06-08 23:57:00' ),
('SMART TV AOC', 'Smart TV LED 43" Full HD AOC ROKU TV FHD " Windows 11 - Prata', 'https://images.pexels.com/photos/1444416/pexels-photo-1444416.jpeg', '1990.80', '3', '12', '2022-06-09 00:02:00' );


INSERT INTO tb_category(name, description)
VALUES
('Informática', 'Produtos de Informática e acessórios para computadores e notebooks'),
('Escritório', 'Canetas, Cadernos, Folhas, etc'),
('Eletrônicos', 'TVs, Som portátil, Caixa de som');
