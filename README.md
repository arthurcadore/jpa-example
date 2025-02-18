# Implementação JPA (Java Persistence API) com MariaDB

## Execução: 

```bash
make
```

## Arquivos de configuração do Database: 

- ./env/.env_db (variáveis de ambiente do banco de dados)

## Diagrama ER do Database: 

```mermaid
erDiagram
    ALUNO {
        INT matriculaAluno PK
        VARCHAR nome
        BOOLEAN isActive
    }
    
    CURSO {
        INT idCurso PK
        VARCHAR nome
        TEXT descricao
        INT minCredits
    }
    
    PROFESSOR {
        INT matriculaProf PK
        VARCHAR nome
        VARCHAR nivelGraduacao
    }
    
    DISCIPLINA {
        INT idDisciplina PK
        VARCHAR nome
        INT creditos
    }
    
    ALUNO ||--o{ ALUNO_CURSA : matriculaAluno
    CURSO ||--o{ ALUNO_CURSA : idCurso
    
    PROFESSOR ||--o{ CURSO_PROFESSOR : matriculaProf
    CURSO ||--o{ CURSO_PROFESSOR : idCurso
    
    ALUNO ||--o{ CURSA_DISCIPLINA : matriculaAluno
    DISCIPLINA ||--o{ CURSA_DISCIPLINA : idDisciplina
    
    PROFESSOR ||--o{ OFERTA_DISCIPLINA : matriculaProf
    DISCIPLINA ||--o{ OFERTA_DISCIPLINA : idDisciplina
