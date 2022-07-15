USE db_faculdade; 

INSERT INTO departamento
	(nome_departamento)
VALUES 
	('Ciencias Humanas'),
	('Matematica'),
	('Biologicas'),
	('Estagio'),
	('Tecnolo Informação');

INSERT INTO disciplina 
	(nome_disciplina, carga_horaria, descricao, num_alunos, fk_cod_departamento)
VALUES
	('Raciocinio logico', '50', 'Logica', '38', '2'),
    ('Pscicologiacognitiva', '70', 'Psico', '20', '1'),
    ('Eletronica digital', '40', 'Informatica', '70', '2'),
    ('Programação em C', '200', 'Full Stack', '120', '5'),
    ('Programação Java', '200', 'Full Stack', '140', '5'),
    ('Programação PHP', '200', 'Full Stack', '88', '5'),
    ('Programação C#', '200', 'Full Stack', '90', '5'),
    ('Programação C++', '200', 'Full Stack', '101', '5'),
    ('Programação C', '200', 'Full Stack', '120', '5'),
    ('Programação WEB', '200', 'Full Stack', '135', '5'),
    ('Front End', '200', 'Programaçã em PHP', '128', '5'),
    ('Back End', '200', 'Programaçã em Python', '98', '5'),
    ('Programação Python', '200', 'Full Stack', '179', '5'),
    ('Aritimética', '50', 'Logica', '59', '2'),
    ('Física 1', '100', 'Logica', '158', '2'),
    ('Física 2', '70', 'Logica', '39', '2'),
    ('Física 3', '150', 'Logica', '110', '2'),
    ('Cálculo 1', '100', 'Logica', '200', '2'),
    ('Cálculo 2', '70', 'Logica', '150', '2'),
    ('Cálculo 3', '150', 'Logica', '80', '2'),
    ('Geometrica', '150', 'Logica', '80', '2'),
    ('Sociologica', '110', 'Pessoas', '29', '1'),
    ('História', '200', 'Pessoas', '209', '1'),
    ('Direito', '400', 'Pessoas', '500', '1'),
    ('Ciência', '400', 'Meio Ambiente', '100', '3'),
    ('Natureza', '250', 'Floresta', '100', '3'),
    ('Biologo', '350', 'Animais', '88', '3'),
    ('Mar', '350', 'Oceano', '99', '3'),
    ('Engenharia Civil', '500', 'Engenharia', '300', '4'),
    ('Engenharia Militar', '500', 'Guerra', '100', '4'),
    ('Computação', '500', 'Guerra', '200', '4');

INSERT INTO professor 
	(nome_professor, sobrenome_professor, status, fk_cod_departamento)
VALUES
	('luciano', 'Lopes', '1', '5'),
    ('Gabriel', 'Maraschin', '1', '5'),
    ('Lidia', 'Almeida', '1', '5'),
    ('Willian', 'Rodrigues', '1', '5'),
    ('Rafael', 'Sakamoto', '1', '5'),
    ('Lucas', 'Santos', '0', NULL),
    ('Italo', 'Lima', '0', NULL),
    ('Janaina', 'Silva', '1', '5'),
    ('Jessiane', 'Maria', '0', NULL),
    ('Jessica', 'Martins', '1', '5');

INSERT INTO curso 
	(nome_curso, fk_cod_departamento)
VALUES
	('Engenharia software', '5'),
    ('Analise de sistemas', '5'),
    ('Biologia', '3'),
    ('Historia', '1'),
    ('Matematica', '2'),
    ('Engenharia eletrica', '2'),
	('Pscicologia', '1'),
    ('Direiro', '1'),
    ('Engenharia Civil', '4'),
    ('Administração', '1');
    
INSERT INTO tipo_telefone
	(tipo_telefone)
VALUES
	('Celular'),
    ('Residenc'),
    ('Comercia');
    
INSERT INTO turma
	(periodo, num_alunos, dt_inicio, dt_fim, fk_cod_curso)
VALUES
	('Noturno', '80', '2020-02-20', '2024-10-17', '1'),
    ('Matutino', '55', '2018-02-20', '2022-10-17', '2'),
    ('Tarde', '120', '2022-02-20', '2026-10-17', '3'),
    ('Matutino', '60', '2019-02-20', '2023-10-17', '4'),
    ('Tarde', '88', '2022-02-20', '2024-10-17', '5'),
    ('Noite', '99', '2018-02-20', '2022-10-17', '6'),
    ('Noite', '100', '2021-02-20', '2025-10-17', '7'),
    ('Matutino', '77', '2019-02-20', '2023-10-17', '8');

INSERT INTO tipo_logradouro
	(tipo_logradouro)
VALUES
	('Quadra'),
    ('Avenida'),
    ('Chacara'),
    ('Condominio'),
    ('Setor'),
    ('Praça'),
    ('Jardin'),
    ('Parques'),
    ('Loteamento'),
    ('Alameda');

INSERT INTO endereco
	(nome_rua, numero_rua, complemento, CEP, fk_cod_tipo_logradouro)
VALUES
	('Figueredo', '19', 'Lote 16', '4356532', '1'),
    ('João', '38', 'Predio D', '8452746', '2'),
    ('Prefeito', '10', 'Lote 14', '4784576', '3'),
    ('Obama', '2', 'Lote 99', '1426874', '4'),
    ('Bolsonaro', '34', 'Casa 17', '1768935', '5'),
    ('Cheguevara', '112', 'Lote 26', '6893465', '6'),
    ('Lula', '140', 'Predio A', '1468673', '7'),
    ('Lua', '16', 'Lote 16', '1586432', '8'),
    ('Peixe', '11', 'Lote 25', '1875984', '9'),
    ('Leão', '9', 'Lote 45', '1960354', '10'),
    ('Uruguai', '09', 'Predio', '6536732', '1'),
    ('EUA', '18', 'Lote 32', '1087345', '2'),
    ('Visconde', '89', 'Londres', '6835687', '3'),
    ('Manuel', '65', 'Lote 16', '3890567', '4'),
    ('Mendigo', '37', 'Casa 6', '0689354', '5'),
    ('Nadal', '63', 'Lote 2/6', '4245674', '6'),
    ('Casada', '78', 'Casa 17', '9634289', '7'),
    ('Luciana', '55', 'Casa', '25663673', '8'),
    ('Brasil', '33', 'Casa 10', '0635481', '9');
    
INSERT INTO aluno
	(nome_aluno, sobrenome_aluno, CPF, status, sexo, nome_pai, nome_mae, email, whatsapp, fk_cod_curso, fk_cod_turma, fk_cod_endereco)
VALUES
	('Gabriel', 'Maraschin', '039462', '1', 'M', 'Fernado', 'Janaina', 'gabrielmaraschin123@gmail.com', '8637489', '1', '1', '1'),
    ('Amanda', 'Ramalho', '97536876', '0', 'F', 'Rafael', 'Nathalia', 'amandaramalho@gmail.com', '86423678', '2', '2', '2'),
    ('Rafaela', 'Dantes', '08674536', '1', 'F', 'Leandro', 'Silvia', 'rafaeladantes@gmail.com', NULL, '3', '3', '3'),
    ('Ingred', 'Maria', '80675437', '1', 'F', 'Gabriel', 'Juliana', 'ingredmaria@gmail.com', '9866535', '4', '4', '4'),
    ('Luciano', 'Lopes', '06874526', '0', 'M', 'Andre', 'Miriam', 'lucianolopes@gmail.com', '0984653', '5', '5', '5'),
    ('Matheus', 'Maraschin', '19856743', '1', 'M', 'Lucas', 'Gabriela', 'matheusmaraschin@gmail.com', '9634762', '6', '6', '6'),
    ('Alvaro', 'Martins', '86389756', '1', 'M', 'Luciano', 'Nayara', 'alvaromartins@gmail.com', '9835427', '7', '7', '6'),
    ('Leticia', 'Souza', '04532786', '1', 'F', 'Guilherme', 'Ana', 'leticiasouza@gmail.com', NULL, '8', '8', '7'),
    ('Lidia', 'Lima', '95634976', '1', 'F', 'Armando', 'Ingrid', 'lidialima@gmail.com', '8967542', '9', '1', '8'),
    ('Italo', 'Brasil', '94532769', '1', 'M', 'José', 'Lidia', 'italobrasil@gmail.com', '9752465', '10', '2', '9'),
    ('Pedro', 'Coelho', '04261785', '1', 'M', 'Daniel', 'Rafaela', 'pedrocoelho@gmail.com', NULL, '1', '3', '10'),
    ('Nathalia', 'Sakamoto', '94523651', '1', 'F', 'Whanderson', 'Jessiane', 'nathaliasakamoto@gmail.com', '9856342', '2', '4', '11'),
    ('Andre', 'Steves', '97525784', '1', 'M', 'Anderson', 'Idarci', 'andresteves@gmail.com', '98632453', '3', '5', '12'),
    ('Jon', 'Almeida', '96351768', '1', 'M', 'Jaime', 'Salete', 'jonalmeida@gmail.com', '7623986', '4', '6', '13'),
    ('Renrique', 'Silva', '87438769', '1', 'M', 'Gustavo', 'Elzira', 'renriquesilva@gmail.com', NULL, '5', '7', '14'),
    ('Nathalia', 'Soares', '09564271', '0', 'F', 'Argemiro', 'Alexandra', 'nathaliasoares@gmail.com', '9843657', '6', '8', '15'),
    ('Jô', 'Soares', '95763421', '1', 'M', 'Rodolfo', 'Fatima', 'josoares@gmail.com', '8976535', '7', '1', '16'),
    ('Faustão', 'Gordo', '07645873', '1', 'M', 'João', 'Josefina', 'faustaogordo@gmail.com', '8763267', '8', '2', '17'),
    ('Leandro', 'Bit', '24531768', '1', 'M', 'Heber', 'Janaina', 'leandrobit@gmail.com', '9876587', '9', '3', '18'),
    ('Juliana', 'Maraschin', '98424685', '1', 'F', 'Luiz', 'Rafaela', 'julianamaraschin@gmail.com', '9867543', '10', '4', '19');

INSERT INTO telefone
	(cod_telefone, num_telefone, fk_cod_tipo)
VALUES
		('1','615245678', '1'),
        ('2','86423678', '2'),
        ('3','613748268', '3'),
        ('4','619364736', '1'),
        ('5','619854738', '2'),
        ('6','619573842', '3'),
        ('7','617267527', '1'),
        ('8','618998362', '2'),
        ('9','615245678', '3'),
        ('10','615646455', '1'),
        ('11','613297323', '2'),
        ('12','9856342', '3'),
        ('13','98632453', '1'),
        ('14','7623986', '2'),
        ('15','618398438', '3'),
        ('16','615245678', '1'),
        ('17','613424333', '2'),
        ('18','8763267', '3'),
        ('19','617537534', '1'),
        ('20','613742988', '2');
        
INSERT INTO telefone
	(cod_telefone, num_telefone, fk_cod_tipo)
VALUES
	('21', '612346785', '1'),
    ('22', '615252353', '1');

INSERT INTO telefone_aluno
	(fk_RA, fk_cod_telefone)
VALUES
	('1', '1'),
    ('2', '2'),
    ('4', '4'),
    ('5', '5'),
    ('6', '6'),
    ('7', '7'),
    ('9', '9'),
    ('10', '10'),
    ('12', '12'),
    ('13', '13'),
    ('14', '14'),
    ('16', '16'),
    ('17', '17'),
    ('18', '18'),
    ('19', '19'),
    ('20', '20'),
    ('1', '3'),
    ('1', '8'),
    ('5', '15'),
    ('5', '21'),
    ('9', '11'),
    ('9', '22');

INSERT INTO historico
	(dt_inicio, dt_fim, fk_RA)
VALUES
	('2020-02-20', '2024-10-17', '1'),
    ('2018-02-20', '2022-10-17', '2'),
    ('2022-02-20', '2026-10-17', '3'),
    ('2019-02-20', '2023-10-17', '4'),
    ('2022-02-20', '2024-10-17', '5'),
    ('2018-02-20', '2022-10-17', '6'),
    ('2021-02-20', '2025-10-17', '7'),
    ('2019-02-20', '2023-10-17', '8'),
    ('2020-02-20', '2024-10-17', '9'),
    ('2018-02-20', '2022-10-17', '10'),
    ('2022-02-20', '2026-10-17', '11'),
    ('2019-02-20', '2023-10-17', '12'),
    ('2022-02-20', '2024-10-17', '13'),
    ('2018-02-20', '2022-10-17', '14'),
    ('2021-02-20', '2025-10-17', '15'),
    ('2019-02-20', '2023-10-17', '16'),
    ('2020-02-20', '2024-10-17', '17'),
    ('2018-02-20', '2022-10-17', '18'),
    ('2022-02-20', '2026-10-17', '19'),
    ('2019-02-20', '2023-10-17', '20');
	
DELETE FROM historico WHERE cod_historico IN ('2','5','16');

INSERT INTO disciplina_historico
	(fk_cod_historico, fk_cod_disciplina, nota, frequencia)
VALUES
	('1', '1', '99', '100'),
    ('3', '3', '98', '30'),
    ('4', '4', '70', '70'),
    ('6', '6', '20', '50'),
    ('7', '7', '50', '40'),
    ('8', '8', '40', '70'),
    ('9', '9', '70', '76'),
    ('10', '10', '90', '86'),
    ('11', '11', '99', '25'),
    ('12', '12', '65', '75'),
    ('13', '13', '78', '86'),
    ('14', '14', '10', '45'),
    ('15', '15', '98', '57'),
    ('17', '17', '34', '76'),
    ('18', '18', '64', '97'),
    ('19', '19', '68', '97'),
    ('20', '20', '99', '100');

INSERT INTO aluno_disciplina
	(fk_RA, fk_cod_disciplina)
VALUES
	('1', '1'),
    ('2', '2'),
    ('3', '3'),
    ('4', '4'),
    ('5', '5'),
    ('6', '6'),
    ('7', '7'),
    ('8', '8'),
    ('9', '9'),
    ('10', '10'),
    ('11', '11'),
    ('12', '12'),
    ('13', '13'),
    ('14', '14'),
    ('15', '15'),
    ('16', '16'),
    ('17', '17'),
    ('18', '18'),
    ('19', '19'),
    ('20', '20');

INSERT INTO curso_disciplina
	(fk_cod_curso, fk_cod_disciplina)
VALUES
	('1', '1'),
    ('2', '2'),
    ('3', '3'),
    ('4', '4'),
    ('5', '5'),
    ('1', '6'),
    ('2', '7'),
    ('3', '8'),
    ('4', '9'),
    ('5', '10'),
    ('1', '11'),
    ('2', '12'),
    ('3', '13'),
    ('4', '14'),
    ('5', '15'),
    ('1', '16'),
    ('2', '17'),
    ('3', '18'),
    ('4', '19'),
    ('5', '20');

INSERT INTO professor_disciplina
	(fk_cod_professor, fk_cod_disciplina)
VALUES
	('1', '1'),
    ('2', '2'),
    ('3', '3'),
    ('4', '4'),
    ('5', '5'),
    ('6', '6'),
    ('7', '7'),
    ('8', '8'),
    ('9', '9'),
    ('10', '10'),
    ('1', '11'),
    ('2', '12'),
    ('3', '13'),
    ('4', '14'),
    ('5', '15'),
    ('6', '16'),
    ('7', '17'),
    ('8', '18'),
    ('9', '19'),
    ('10', '20'),
    ('1', '21'),
    ('2', '22'),
    ('3', '23'),
    ('4', '24'),
    ('5', '25'),
    ('6', '26'),
    ('7', '27'),
    ('8', '28'),
    ('9', '29'),
    ('10', '30'),
    ('1', '31');