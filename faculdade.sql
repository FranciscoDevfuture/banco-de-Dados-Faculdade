use faculdade;

/*inserindo os Cursos*/

insert into  CURSO(nome, duracao, modalidade) values
('Administração',36,'Presencial'),
('Engenharia de Software',48,'Presencial'),
('Análise e Desenvolvimento de Sistemas',60,'EAD'),
('Medicina',72,'Presencial');

/*cadastrando o corpo Docente*/
insert into PROFESSOR(nome,cpf,formacao,email,telefone) values
('Francisco Jose Dos Santos','325.758.069-88','Python','franco.jose.mendonca@gmail.com','(11) 945878-5489'),
('Flaviana Mendonça','328.785.079-77','Pedagogia','flaymendonca@gmail.com','(11)94203-4589');

/*cadastrando alunos*/
insert into ALUNO(nome,cpf,data_nasc,email,telefone) values		
('Lucas Mendonça Dos Santos','458.256.065-45','2014-06-03','luluurubuzinho@gmail.com','(11)98089-3345'),
('Nicoly','558.256.565-45','2000-08-04','Nickzonasul@gamil.com','(11)958459-3345');

/*inserindo DISCIPLINA vinculadas a cursos e Professores*/
INSERT INTO DISCIPLINA (nome, carga_horaria, id_curso, id_professor) VALUES

/* Disciplinas de Engenharia de Software (Curso id 3) */
('Anatomia', 36, 4, 2),
('Necrópsia', 48, 4, 2);
/*Criando Turmas para as Disciplinas*/

INSERT INTO TURMA (id_disciplina, horario, sala) VALUES
-- Turmas de Programação (Disciplina ID 1)
(50, '18:00-20:00', 'Sala 101'),
(50, '14:00-16:00', 'Sala 102');


/*Matriculando Alunos nas Turmas*/
INSERT INTO MATRICULA (id_aluno, id_turma, status)
 VALUES
(1, 13, 'Cursando'),
(2, 13 , 'Cursando');

/*Inserindo Notas dos Alunos*/
INSERT INTO NOTA (id_matricula, av1, av2, av3, media, situacao) VALUES
-- Notas de João na matrícula 1 (Economia)
(1, 7.5, 8.0, NULL, 7.75, 'Aprovado');

/*Registrando Frequência*/
INSERT INTO FREQUENCIA (id_matricula, data, presente) VALUES
-- Frequência de João na matrícula 1 (Economia)
(1, '2024-03-01', TRUE),
(1, '2024-03-08', TRUE),
(1, '2024-03-15', FALSE); -- Falta

/*Verificando os Dados Inseridos*/

SELECT A.nome AS Aluno, C.nome AS Curso
FROM ALUNO A
JOIN MATRICULA M ON A.id_aluno = M.id_aluno
JOIN TURMA T ON M.id_turma = T.id_turma
JOIN DISCIPLINA D ON T.id_disciplina = D.id_disciplina
JOIN CURSO C ON D.id_curso = C.id_curso;




UPDATE ALUNO
SET nome = 'Nicoly Souza Ferreira'
WHERE cpf = '558.256.565-45';



SELECT * FROM CURSO;
select * from PROFESSOR;
select * from Aluno;
select * from DISCIPLINA;
select * from turma;
select * from matricula;