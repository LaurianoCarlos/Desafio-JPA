INSERT INTO  tb_participante(id, nome, email) values (1, 'José Maria', 'jose@gmail.com');
INSERT INTO  tb_participante(id, nome, email) values (2, 'Tiago Faria', 'tiago@gmail.com');
INSERT INTO  tb_participante(id, nome, email) values (3, 'Maria do Rosário', 'maria@gmail.com');
INSERT INTO  tb_participante(id, nome, email) values (4, 'Teresa Siva', 'teresa@gmail.com');

INSERT INTO tb_categoria(descricao) VALUES ('Curso');
INSERT INTO tb_categoria(descricao) VALUES ('Oficina');


INSERT INTO tb_atividade(id,categoria_id, nome, descricao, preco) VALUES (1, 1, 'Curso HTML', 'Aprenda HTML de forma prática', 80.00);
INSERT INTO tb_atividade(id,categoria_id, nome, descricao, preco) VALUES (2, 2, 'Oficina de GitHub', 'Controle versões do seu projeto', 50.00);


INSERT INTO tb_bloco(id, atividade_id, inicio, fim) VALUES (1, 1, '2017-09-25 08:00:00', '2017-09-25 11:00:00');
INSERT INTO tb_bloco(id, atividade_id, inicio, fim) VALUES (2, 2, '2017-09-25 14:00:00', '2017-09-25 18:00:00');
INSERT INTO tb_bloco(id, atividade_id, inicio, fim) VALUES (3, 2, '2017-09-25 08:00:00', '2017-09-25 11:00:00');

INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (1, 1);
INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (2, 1);
INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (1, 2);
INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (1, 3);
INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (2, 3);
INSERT INTO tb_atividade_participante (atividade_id, participante_id) VALUES (2, 4);
