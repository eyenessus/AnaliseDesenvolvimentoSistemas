CREATE DATABASE bank;
USE bank;

CREATE TABLE users(
    user_id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(45) NOT NULL,
    email VARCHAR(45) NOT NULL,
    password VARCHAR(45) NOT NULL
    datanascimento DATE NOT NULL
    senha VARCHAR(45) NOT NULL
    telefone VARCHAR(45) NOT NULL
    data_cadastro DATE NOT NULL
);

CREATE TABLE conta(
    conta_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    agencia VARCHAR(45) NOT NULL,
    saldo DECIMAL(10,2) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);
CREATE TABLE endereco(
    endereco_id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    rua VARCHAR(45) NOT NULL,
    numero INT NOT NULL,
    bairro VARCHAR(45) NOT NULL,
    cidade VARCHAR(45) NOT NULL,
    estado VARCHAR(45) NOT NULL,
    cep VARCHAR(45) NOT NULL,
    pais VARCHAR(45) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(user_id)
);

CREATE TABLE extrato_has_conta(
    extrato_id INT NOT NULL,
    conta_id INT NOT NULL,
    user_received_id INT NOT NULL,
    
    FOREIGN KEY (user_received_id) REFERENCES extrato(conta_id),
    FOREIGN KEY (extrato_id) REFERENCES extrato(extrato_id),
    FOREIGN KEY (conta_id) REFERENCES conta(conta_id)
);


CREATE TABLE extrato(
    extrato_id INT AUTO_INCREMENT PRIMARY KEY,
    valor DECIMAL(10,2) NOT NULL,
    data DATE NOT NULL,
);


