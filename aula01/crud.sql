USE tb_escola;

-- inserir 1 elemento --

INSERT INTO tb_professor (nome, email, cpf)
VALUES ('Jose do Egito', 'jose@email.com', '99988877712');

-- inserir vários elementos --
INSERT INTO tb_professor (nome, email, cpf)
VALUES
 ('Jose de Juda', 'josejuda@email.com', '55566677712'),
 ('Maria de Carfanaum', 'maria@email.com', '33344455512'),
 ('Jaco do Deserto', 'jaco@email.com', '11122233312');

 -- excluir 1 registro -- 
 DELETE FROM tb_professor WHERE id ='11';

 -- excluir todos os registros --
 DELETE FROM tb_professor;

 -- editar dados de 1 registro --
 UPDATE tb_professor SET nome='Jaco de Jerusalem' WHERE cpf ='11122233312';

 -- editar dados de todos os registros --
UPDATE tb_professor SET nome='Francisco';

-- selecionar todos os dados de todos os professores --
SELECT * FROM tb_professor;

-- selecionar todos os dados do professor de id =3 --
SELECT * FROM tb_professor WHERE id='5';

-- selecionar alguns dados de todos os professores --
SELECT nome, cpf FROM tb_professor;

 