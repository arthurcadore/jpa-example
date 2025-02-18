USE Universidade;

-- Populando a tabela Aluno
INSERT INTO Aluno VALUES (1, 'João Silva', TRUE), (2, 'Maria Souza', TRUE), (3, 'Carlos Oliveira', FALSE);

-- Populando a tabela Curso
INSERT INTO Curso VALUES (101, 'Engenharia da Computação', 'Curso voltado para tecnologia', 240), (102, 'Administração', 'Curso de gestão empresarial', 200);

-- Populando a tabela Professor
INSERT INTO Professor VALUES (201, 'Dr. Pedro Santos', 'Doutorado'), (202, 'Profa. Ana Lima', 'Mestrado');

-- Populando a tabela Disciplina
INSERT INTO Disciplina VALUES (301, 'Banco de Dados', 4), (302, 'Redes de Computadores', 5);

-- Populando a tabela Aluno_Cursa
INSERT INTO Aluno_Cursa VALUES (1, 101), (2, 102);

-- Populando a tabela Curso_Professor
INSERT INTO Curso_Professor VALUES (201, 101), (202, 102);

-- Populando a tabela Cursa_Disciplina
INSERT INTO Cursa_Disciplina VALUES (1, 301, '2024-02-01 08:00:00', 8.5), (2, 302, '2024-02-02 09:00:00', 7.0);

-- Populando a tabela Oferta_Disciplina
INSERT INTO Oferta_Disciplina VALUES (201, 301, '2024-02-01 08:00:00'), (202, 302, '2024-02-02 09:00:00');