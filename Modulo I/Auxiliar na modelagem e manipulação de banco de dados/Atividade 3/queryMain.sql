CREATE DATABASE hospital_db_enoun;

USE hospital_db_enoun;

CREATE TABLE convenios (
    id_convenios int AUTO_INCREMENT PRIMARY KEY,
    nome varchar(255),
    cnpj varchar(255),
    tempo_carencia DATE
);

CREATE TABLE pacientes(
    id_pacientes int AUTO_INCREMENT PRIMARY KEY,
    nome varchar(255),
    data_nascimento date,
    cpf varchar(11),
    rg varchar(11),
    email varchar(255),
    convenio_id int default NULL,
    FOREIGN KEY (convenio_id) REFERENCES convenios(id_convenios)
);

CREATE TABLE especialidades_medicos(
    id_especialidades_medicos int AUTO_INCREMENT PRIMARY KEY,
    especialidade varchar(45)
);


CREATE TABLE medicos(
    idmedicos INT PRIMARY KEY AUTO_INCREMENT,
    nome varchar(255),
    data_nascimento DATE,
    cpf varchar(11),
    crm int,
    uc_crm CHAR(2),
    telefone varchar(45),
    endereco_completo varchar(45)
);

CREATE TABLE medicos_especialidades(
    especialidade_id int,
    medico_id int,
    PRIMARY KEY (especialidade_id,medico_id),
    FOREIGN KEY (especialidade_id) REFERENCES especialidades_medicos(id_especialidades_medicos),
    FOREIGN KEY (medico_id) REFERENCES medicos(idmedicos)
);



CREATE TABLE consultas (
    idconsultas int NOT NULL PRIMARY KEY AUTO_INCREMENT,
    data_hora DATE,
    paciente_id INT,
    valor decimal(10, 2),
    especialidades_medico_id int,
    receitas int,
    fk_medico_responsavel INT,
    FOREIGN KEY (fk_medico_responsavel) REFERENCES medicos(idmedicos),
    FOREIGN KEY (paciente_id) REFERENCES pacientes(id_pacientes),
    FOREIGN KEY (especialidades_medico_id) REFERENCES especialidades_medicos(id_especialidades_medicos)
);
CREATE TABLE receitas(
    id_receitas int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    receita text,
    consultas_id int,
    FOREIGN KEY (consultas_id) REFERENCES consultas(idconsultas)
    );

CREATE TABLE tipo_quarto(
    id_tipo_quarto int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    descricao varchar(255),
    valor_diaria decimal(10, 2)
);

CREATE TABLE quartos(
    id_quartos int NOT NULL AUTO_INCREMENT PRIMARY KEY,
    numero int,
    id_tipo_quarto int,
    FOREIGN KEY (id_tipo_quarto) REFERENCES tipo_quarto(id_tipo_quarto)
);

CREATE TABLE enfermeiros(
    id_enfermeiros int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    nome varchar(255),
    cpf varchar(11),
    cre int
);

CREATE TABLE internacoes (
    id_internacoes int AUTO_INCREMENT NOT NULL PRIMARY KEY,
    data_entrada DATE,
    data_prev_alta DATE,
    procedimento text,
    paciente_id INT,
    quarto_id INT,
    enfermeiro_id INT,
    FOREIGN KEY (quarto_id) REFERENCES quartos(id_quartos),
    FOREIGN KEY (enfermeiro_id) REFERENCES enfermeiros(id_enfermeiros),
    FOREIGN KEY (paciente_id) REFERENCES pacientes(id_pacientes)
);