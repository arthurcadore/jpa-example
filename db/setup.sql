CREATE DATABASE IF NOT EXISTS Universidade;
USE Universidade;

-- Tabela Aluno
CREATE TABLE Aluno (
    matriculaAluno INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    isActive BOOLEAN NOT NULL
);

-- Tabela Curso
CREATE TABLE Curso (
    idCurso INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    descricao TEXT,
    minCredits INT NOT NULL
);

-- Tabela Professor
CREATE TABLE Professor (
    matriculaProf INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    nivelGraduacao VARCHAR(50) NOT NULL
);

-- Tabela Disciplina
CREATE TABLE Disciplina (
    idDisciplina INT PRIMARY KEY,
    nome VARCHAR(100) NOT NULL,
    creditos INT NOT NULL
);

-- Relacionamento Aluno_Cursa (Aluno x Curso)
CREATE TABLE Aluno_Cursa (
    matriculaAluno INT,
    idCurso INT,
    PRIMARY KEY (matriculaAluno, idCurso),
    FOREIGN KEY (matriculaAluno) REFERENCES Aluno(matriculaAluno),
    FOREIGN KEY (idCurso) REFERENCES Curso(idCurso)
);

-- Relacionamento Curso_Professor (Curso x Professor)
CREATE TABLE Curso_Professor (
    matriculaProf INT,
    idCurso INT,
    PRIMARY KEY (matriculaProf, idCurso),
    FOREIGN KEY (matriculaProf) REFERENCES Professor(matriculaProf),
    FOREIGN KEY (idCurso) REFERENCES Curso(idCurso)
);

-- Relacionamento Cursa_Disciplina (Aluno x Disciplina)
CREATE TABLE Cursa_Disciplina (
    matriculaAluno INT,
    idDisciplina INT,
    tsInicio TIMESTAMP NOT NULL,
    nota DECIMAL(5,2),
    PRIMARY KEY (matriculaAluno, idDisciplina),
    FOREIGN KEY (matriculaAluno) REFERENCES Aluno(matriculaAluno),
    FOREIGN KEY (idDisciplina) REFERENCES Disciplina(idDisciplina)
);

-- Relacionamento Oferta_Disciplina (Professor x Disciplina)
CREATE TABLE Oferta_Disciplina (
    matriculaProf INT,
    idDisciplina INT,
    tsInicio TIMESTAMP NOT NULL,
    PRIMARY KEY (matriculaProf, idDisciplina),
    FOREIGN KEY (matriculaProf) REFERENCES Professor(matriculaProf),
    FOREIGN KEY (idDisciplina) REFERENCES Disciplina(idDisciplina)
);
