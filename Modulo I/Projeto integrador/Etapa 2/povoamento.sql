INSERT INTO users (name, email, password, datanascimento, senha, telefone, data_cadastro) VALUES
('John Doe', 'john.doe@example.com', 'password123', '1980-01-01', 'password123', '1234567890', '2023-01-01'),
('Jane Smith', 'jane.smith@example.com', 'password456', '1990-02-02', 'password456', '0987654321', '2023-02-01');
-- Inserindo contas
INSERT INTO conta (user_id, agencia, saldo) VALUES
(1, '0001', 1500.00),
(2, '0002', 2500.00),
(3, '0003', 3500.00),
(4, '0004', 4500.00);

-- Inserindo endereços
INSERT INTO endereco (user_id, rua, numero, bairro, cidade, estado, cep, pais) VALUES
(1, 'Avenida Central', 101, 'Centro', 'São Paulo', 'SP', '01001-000', 'Brasil'),
(2, 'Rua das Flores', 202, 'Jardim', 'Rio de Janeiro', 'RJ', '22041-001', 'Brasil'),
(3, 'Praça da Liberdade', 303, 'Liberdade', 'Belo Horizonte', 'MG', '30140-010', 'Brasil'),
(4, 'Alameda Santos', 404, 'Bela Vista', 'Curitiba', 'PR', '80250-210', 'Brasil');

-- Inserindo extratos
INSERT INTO extrato (valor, data) VALUES
(500.00, '2023-03-01'),
(1500.00, '2023-03-02'),
(200.00, '2023-03-03'),
(800.00, '2023-03-04');

-- Inserindo relação entre extrato e conta
INSERT INTO extrato_has_conta (extrato_id, conta_id, user_received_id) VALUES
(1, 1, 2),
(2, 2, 1),
(3, 3, 4),
(4, 4, 3);