CREATE DATABASE clinica_medica;

USE clinica_medica;

CREATE TABLE IF NOT EXISTS enderecos (
    id            INTEGER PRIMARY KEY AUTO_INCREMENT,
    rua           TEXT    NOT NULL,
    numero        TEXT    NOT NULL,
    complemento   TEXT,
    bairro        TEXT    NOT NULL,
    cidade        TEXT    NOT NULL,
    estado        TEXT    NOT NULL
);

CREATE TABLE IF NOT EXISTS convenios (
    id            INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome          TEXT         NOT NULL,  
    mensalidade   NUMERIC(10, 2) NOT NULL
);

CREATE TABLE IF NOT EXISTS pacientes (
    id            INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome          TEXT    NOT NULL,
    cpf           VARCHAR(15)   NOT NULL UNIQUE,
    data_nasc     DATE    NOT NULL,         
    telefone      TEXT,
    email         TEXT,
    id_endereco   INTEGER NOT NULL,
    FOREIGN KEY (id_endereco) REFERENCES enderecos (id)
);

CREATE TABLE IF NOT EXISTS planos_paciente (
    id                INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_paciente       INTEGER NOT NULL,
    id_convenio       INTEGER NOT NULL,
    data_adesao       DATE    NOT NULL,     
    status_pgto       TEXT    NOT NULL     
        CHECK (status_pgto IN ('em_dia', 'inadimplente', 'cancelado')),
    FOREIGN KEY (id_paciente) REFERENCES pacientes (id),
    FOREIGN KEY (id_convenio) REFERENCES convenios (id)
);

CREATE TABLE IF NOT EXISTS especialidades (
    id   INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome TEXT NOT NULL
);

CREATE TABLE IF NOT EXISTS medicos (
    id                 INTEGER PRIMARY KEY AUTO_INCREMENT,
    nome               TEXT    NOT NULL,
    crm                VARCHAR(6)    NOT NULL UNIQUE,
    id_especialidade   INTEGER NOT NULL,
    FOREIGN KEY (id_especialidade) REFERENCES especialidades (id)
);

CREATE TABLE IF NOT EXISTS horarios_agendamento (
    id          INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_medico   INTEGER NOT NULL,
    data        DATE NOT NULL,
    horario     TIME NOT NULL,
    disponivel  CHAR(1) CHECK (disponivel IN ('S', 'N')) NOT NULL,
    FOREIGN KEY (id_medico) REFERENCES medicos (id)
);

CREATE TABLE IF NOT EXISTS consultas (
    id                  INTEGER PRIMARY KEY AUTO_INCREMENT,
    id_medico           INTEGER NOT NULL,
    id_paciente         INTEGER NOT NULL,
    data                DATE    NOT NULL,  
    hora                TEXT    NOT NULL,   
    duracao_min         INTEGER NOT NULL,   
    presenca_paciente   CHAR(1) CHECK (presenca_paciente IN ('S', 'N')) NOT NULL,
    FOREIGN KEY (id_medico)   REFERENCES medicos   (id),
    FOREIGN KEY (id_paciente) REFERENCES pacientes (id)
);