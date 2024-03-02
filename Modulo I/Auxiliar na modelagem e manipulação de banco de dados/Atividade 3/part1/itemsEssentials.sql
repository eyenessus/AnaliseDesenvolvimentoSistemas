USE hospital_db_enoun;


INSERT INTO
    enfermeiros(nome, cpf, cre)
VALUES
    ("Maria", "123", 1),
    ("João", "123", 2),
    ("José", "123", 3),
    ("Ana", "123", 4),
    ("Paulo", "123", 5),
    ("Pedro", "123", 6),
    ("Fernanda", "123", 7);

INSERT INTO
    especialidades_medicos(especialidade)
VALUES
    ('Pediatra'),
    ('Clínica Geral'),
    ('Gastroenterologia'),
    ('Dermatologista'),
    ('Ginecologista'),
    ('Urologista'),
    ('Neurologista');

INSERT INTO
    medicos(
        nome,
        data_nascimento,
        cpf,
        crm,
        uc_crm,
        telefone,
        endereco_completo
    )
VALUES
    (
        "Maria",
        "1980-01-01",
        "12345678901",
        123456,
        "SP",
        "(11) 1234-5678",
        "Rua 1, 123"
    ),
    (
        "Paulo",
        "1980-01-01",
        "12345678901",
        123456,
        "SP",
        "(11) 1234-5678",
        "Rua 1, 123"
    ),
    (
        "Pedro",
        "1980-01-01",
        "12345678901",
        123456,
        "SP",
        " (11) 1234-5678",
        "Rua 1, 123"
    ),
    (
        "Fernanda",
        "1985-05-10",
        "98765432109",
        654321,
        "RJ",
        "(21) 9876-5432",
        "Avenida 2, 456"
    ),
    (
        "Carlos",
        "1978-09-15",
        "56789012345",
        789012,
        "MG",
        "(31) 5678-9012",
        "Rua 3, 789"
    ),
    (
        "Juliana",
        "1990-03-25",
        "34567890123",
        890123,
        "RS",
        "(51) 3456-7890",
        "Avenida 4, 012"
    ),
    (
        "Ricardo",
        "1982-07-12",
        "67890123456",
        901234,
        "SC",
        "(48) 6789-0123",
        "Rua 5, 234"
    ),
    (
        "Camila",
        "1987-11-30",
        "45678901234",
        123456,
        "SP",
        "(11) 4567-8901",
        "Avenida 6, 567"
    ),
    (
        "Lucas",
        "1995-02-18",
        "89012345678",
        345678,
        "PR",
        "(41) 8901-2345",
        "Rua 7, 890"
    ),
    (
        "Mariana",
        "1989-06-05",
        "23456789012",
        567890,
        "BA",
        "(71) 2345-6789",
        "Avenida 8, 901"
    );
    
INSERT INTO
    convenios(nome, cnpj, tempo_carencia)
VALUES
    ("Unimed", "12345678000155", "2023-05-15"),
    ("Amil", "12345678000238", "2023-07-20"),
    ("Sulamerica", "12345678000311", "2023-04-10"),
    ("Bradesco", "12345678000492", "2023-09-30");

INSERT INTO
    pacientes(
        nome,
        data_nascimento,
        cpf,
        rg,
        email,
        convenio_id
    )
VALUES
    (
        "Maria",
        "1980-01-01",
        "79876198092",
        "123456789",
        "teste@gmail.com",
        1
    ),
    (
        "João",
        "1980-01-01",
        "19018768022",
        "123456789",
        "tt@gmail.com",
        2
    ),
    (
        "José",
        "1980-01-01",
        "08675485093",
        "123456789",
        "amz@amz.com",
        3
    ),
    (
        "Ana",
        "1985-05-10",
        "96392663029",
        "987654321",
        "xx@apple.com",
        NULL
    ),
    (
        "Paulo",
        "1978-09-15",
        "92316567088",
        "567890123",
        "pop@apple.com",
        2
    ),
    (
        "Pedro",
        "1990-03-25",
        "85516408016",
        "345678901",
        "ss@apple.com",
        3
    ),
    (
        "Fernanda",
        "1982-07-12",
        "35261780039",
        "678901234",
        "xx@te.com",
        2
    ),
    (
        "Carlos",
        "1987-11-30",
        "86359915081",
        "456789012",
        "hoj@gmail.com",
        3
    ),
    (
        "Juliana",
        "1995-02-18",
        "58565076067",
        "890123456",
        "xx@gmail.com",
        NULL
    ),
    (
        "Ricardo",
        "1989-06-05",
        "74324938040",
        "234567890",
        "goku@gmail.com",
        NULL
    );

INSERT INTO
    tipo_quarto(descricao, valor_diaria)
VALUES
    ("apartamentos", 100.00),
    ("quartos duplos ", 200.00),
    ("enfermaria", 300.00);

INSERT INTO
    quartos(numero, id_tipo_quarto)
VALUES
    (1, 1),
    (2, 1),
    (3, 2),
    (4, 2),
    (5, 3),
    (6, 3);

INSERT INTO
    consultas(
        data_hora,
        paciente_id,
        valor,
        especialidades_medico_id,
        fk_medico_responsavel
    )
VALUES
    ("2019-05-15", 10, 223.00, 1,  1),
    ("2020-07-20", 10, 323.00, 2,  2),
    ("2022-10-10", 4, 533.00, 3, 3),
    ("2017-12-05", 3, 221.00, 4,  4),
    ("2020-03-25", 9, 4345.00, 5, 5);


INSERT INTO receitas(receita,consultas_id)
VALUES
    (
        "Dipirona 1 comprimido de 6 em 6 horas por 3 dias",
        1
    ),
    (
        "Paracetamol 1 comprimido de 6 em 6 horas por 3 dias",
        2
    ),
    (
        "Ibuprofeno 1 comprimido de 6 em 6 horas por 3 dias",
        3
    ),
    (
        "Dipirona 1 comprimido de 6 em 6 horas por 3 dias",
        3
    );
INSERT INTO
    internacoes(
        data_entrada,
        data_prev_alta,
        procedimento,
        paciente_id,
        quarto_id,
        enfermeiro_id
    )
VALUES
    (
        "2018-03-15",
        "2018-03-24",
        "Tratamento de Fratura",
        2,
        1,
        1
    ),
    (
        "2019-05-10",
        "2019-05-19",
        "Angioplastia",
        2,
        2,
        2
    ),
    (
        "2020-07-20",
        "2020-07-29",
        "Histerectomia",
        3,
        3,
        3
    ),
    (
        "2018-09-08",
        "2018-09-17",
        "Cirurgia Cardíaca",
        4,
        3,
        4
    ),
    (
        "2019-10-03",
        "2019-10-12",
        "Tratamento de Fratura",
        5,
        3,
        5
    ),
    (
        "2020-02-15",
        "2020-02-24",
        "Aplicação de Enxerto Ósseo",
        5,
        2,
        6
    ),
    (
        "2018-12-01",
        "2018-12-10",
        "Cirurgia de Catarata",
        7,
        1,
        2
    );
