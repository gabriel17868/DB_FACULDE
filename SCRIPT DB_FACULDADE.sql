CREATE DATABASE IF NOT EXISTS db_faculdade
DEFAULT CHARACTER SET utf8mb3
DEFAULT COLLATE utf8_general_ci;

USE db_faculdade;

CREATE TABLE IF NOT EXISTS tipo_telefone (
	cod_tipo INTEGER (4) NOT NULL AUTO_INCREMENT,
    tipo_telefone CHAR (8) NOT NULL,
PRIMARY KEY (cod_tipo) 
) AUTO_INCREMENT 1;

CREATE TABLE IF NOT EXISTS telefone (
	cod_telefone INTEGER (4) NOT NULL AUTO_INCREMENT,
    num_telefone CHAR (20) NOT NULL,
    fk_cod_tipo INTEGER (4) NOT NULL,
PRIMARY KEY (cod_telefone),
FOREIGN KEY (fk_cod_tipo) REFERENCES tipo_telefone (cod_tipo)
) AUTO_INCREMENT 1;

CREATE TABLE IF NOT EXISTS tipo_lougradouro (
	cod_tipo_logradouro INTEGER (4) NOT NULL AUTO_INCREMENT,
    tipo_logradouro CHAR (11),
PRIMARY KEY (cod_tipo_logradouro) 
) AUTO_INCREMENT 1;

ALTER TABLE tipo_lougradouro
RENAME tipo_logradouro;

CREATE TABLE IF NOT EXISTS endereco (
	cod_endereco INTEGER (4) NOT NULL AUTO_INCREMENT,
    nome_rua CHAR (50),
    numero_rua INTEGER (4),
    complemento CHAR (20),
    CEP CHAR (8),
    fk_cod_tipo_logradouro INTEGER (4) NOT NULL,
PRIMARY KEY (cod_endereco),
FOREIGN KEY (fk_cod_tipo_logradouro) REFERENCES tipo_logradouro (cod_tipo_logradouro)
) AUTO_INCREMENT 1;

CREATE TABLE IF NOT EXISTS departamento (
	cod_departamento INTEGER (4) NOT NULL AUTO_INCREMENT,
    nome_departamento CHAR (20),
PRIMARY KEY (cod_departamento) 
) AUTO_INCREMENT 1;

CREATE TABLE IF NOT EXISTS curso (
	cod_curso INTEGER (4) NOT NULL AUTO_INCREMENT,
    nome_curso CHAR (20),
    fk_cod_departamento INTEGER (4) NOT NULL,
PRIMARY KEY (cod_curso),
FOREIGN KEY (fk_cod_departamento) REFERENCES departamento (cod_departamento)
) AUTO_INCREMENT 1;

CREATE TABLE IF NOT EXISTS turma (
	cod_turma INTEGER (4) NOT NULL AUTO_INCREMENT,
    periodo CHAR (8),
    num_alunos INTEGER (4),
    dt_inicio DATE,
    dt_fim DATE,
    fk_cod_curso INTEGER (4),
PRIMARY KEY (cod_turma),
FOREIGN KEY (fk_cod_curso) REFERENCES curso (cod_curso)
) AUTO_INCREMENT 1;

CREATE TABLE IF NOT EXISTS aluno (
	RA INTEGER (4) NOT NULL AUTO_INCREMENT,
    nome_aluno CHAR (20),
    sobrenome_aluno CHAR (20),
    CPF CHAR (11),
    status BOOLEAN,
    sexo CHAR (1),
    nome_pai CHAR (50),
    nome_mae CHAR (50),
    email CHAR (50),
    whatsapp CHAR (20),
    fk_cod_curso INTEGER (4) NOT NULL,
    fk_cod_turma INTEGER (4) NOT NULL,
    fk_cod_endereco INTEGER (4),
PRIMARY KEY (RA),
FOREIGN KEY (fk_cod_curso) REFERENCES curso (cod_curso),
FOREIGN KEY (fk_cod_turma) REFERENCES turma (cod_turma),
FOREIGN KEY (fk_cod_endereco) REFERENCES endereco (cod_endereco)
) AUTO_INCREMENT 1;

CREATE TABLE IF NOT EXISTS telefone_aluno (
	cod_tel_aluno INTEGER (4) NOT NULL AUTO_INCREMENT,
    fk_RA INTEGER (4) NOT NULL,
    fk_cod_telefone INTEGER (4) NOT NULL,
PRIMARY KEY (cod_tel_aluno),
FOREIGN KEY (fk_RA) REFERENCES aluno (RA),
FOREIGN KEY (fk_cod_telefone) REFERENCES telefone (cod_telefone)
) AUTO_INCREMENT 1;

CREATE TABLE IF NOT EXISTS disciplina (
	cod_disciplina INTEGER (4) NOT NULL AUTO_INCREMENT,
    nome_disciplina CHAR (20),
    carga_horaria INTEGER (4),
    descricao CHAR (50),
    num_alunos INTEGER (4),
    fk_cod_departamento INTEGER (4) NOT NULL,
PRIMARY KEY (cod_disciplina),
FOREIGN KEY (fk_cod_departamento) REFERENCES departamento (cod_departamento)
) AUTO_INCREMENT 1;

CREATE TABLE IF NOT EXISTS curso_disciplina (
    fk_cod_curso INTEGER (4) NOT NULL,
    fk_cod_disciplina INTEGER (4) NOT NULL,
PRIMARY KEY (fk_cod_curso, fk_cod_disciplina),
FOREIGN KEY (fk_cod_curso) REFERENCES curso (cod_curso),
FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
) AUTO_INCREMENT 1;

CREATE TABLE IF NOT EXISTS aluno_disciplina (
    fk_RA INTEGER (4) NOT NULL,
    fk_cod_disciplina INTEGER (4) NOT NULL,
PRIMARY KEY (fk_RA, fk_cod_disciplina),
FOREIGN KEY (fk_RA) REFERENCES aluno (RA),
FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
) AUTO_INCREMENT 1;

CREATE TABLE IF NOT EXISTS professor (
	cod_professor INTEGER (4) NOT NULL AUTO_INCREMENT,
    nome_professor CHAR (20),
    sobrenome_professor CHAR (50),
    status BOOLEAN, 
    fk_cod_departamento INTEGER (4) NOT NULL,
PRIMARY KEY (cod_professor),
FOREIGN KEY (fk_cod_departamento) REFERENCES departamento (cod_departamento)
) AUTO_INCREMENT 1;

CREATE TABLE IF NOT EXISTS professor_disciplina (
    fk_cod_professor INTEGER (4) NOT NULL,
    fk_cod_disciplina INTEGER (4) NOT NULL,
PRIMARY KEY (fk_cod_professor, fk_cod_disciplina),
FOREIGN KEY (fk_cod_professor) REFERENCES professor (cod_professor),
FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
) AUTO_INCREMENT 1;

CREATE TABLE IF NOT EXISTS historico (
	cod_historico INTEGER (4) NOT NULL AUTO_INCREMENT,
    dt_inicio DATE,
    dt_fim DATE,
    fk_RA INTEGER (4) NOT NULL,
PRIMARY KEY (cod_historico),
FOREIGN KEY (fk_RA) REFERENCES aluno (RA)
) AUTO_INCREMENT 1;

CREATE TABLE IF NOT EXISTS disciplina_historico (
    fk_cod_historico INTEGER (4) NOT NULL,
    fk_cod_disciplina INTEGER (4) NOT NULL,
    nota FLOAT (4,2),
    frequencia INTEGER (4),
PRIMARY KEY (fk_cod_historico, fk_cod_disciplina),
FOREIGN KEY (fk_cod_historico) REFERENCES historico (cod_historico),
FOREIGN KEY (fk_cod_disciplina) REFERENCES disciplina (cod_disciplina)
) AUTO_INCREMENT 1;