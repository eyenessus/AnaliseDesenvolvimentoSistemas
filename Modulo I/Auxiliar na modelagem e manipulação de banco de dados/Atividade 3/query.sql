USE  hospital_db_enoun;
INSERT INTO receitas(receita) VALUES ("Dipirona 1 comprimido de 6 em 6 horas por 3 dias");
INSERT INTO receitas(receita) VALUES ("Paracetamol 1 comprimido de 6 em 6 horas por 3 dias");
INSERT INTO receitas(receita) VALUES ("Ibuprofeno 1 comprimido de 6 em 6 horas por 3 dias");
INSERT INTO receitas(receita) VALUES ("Dipirona 1 comprimido de 6 em 6 horas por 3 dias");

INSERT INTO enfermeiros(nome,cpf,cre) VALUES ("Maria","123",1);
INSERT INTO enfermeiros(nome,cpf,cre) VALUES ("João","123",2);
INSERT INTO enfermeiros(nome,cpf,cre) VALUES ("José","123",3);
INSERT INTO enfermeiros(nome,cpf,cre) VALUES ("Ana","123",4);
INSERT INTO enfermeiros(nome,cpf,cre) VALUES ("Paulo","123",5);
INSERT INTO enfermeiros(nome,cpf,cre) VALUES ("Pedro","123",6);
INSERT INTO enfermeiros(nome,cpf,cre) VALUES ("Fernanda","123",7);
    
    INSERT INTO especialidades_medicos(especialidade) VALUES ('Pediatra');
    INSERT INTO especialidades_medicos(especialidade) VALUES ('Clínica Geral');
    INSERT INTO especialidades_medicos(especialidade) VALUES ('Gastroenterologia');
    INSERT INTO especialidades_medicos(especialidade) VALUES ('Dermatologista');
    INSERT INTO especialidades_medicos(especialidade) VALUES ('Ginecologista');
    INSERT INTO especialidades_medicos(especialidade) VALUES ('Urologista');
    INSERT INTO especialidades_medicos(especialidade) VALUES ('Neurologista');

    INSERT INTO medicos(nome,data_nascimento,cpf,crm,uc_crm,especialidade_id,telefone,endereco_completo) VALUES ("Ana","1980-01-01","12345678901",123456,"SP",5,"(11) 1234-5678","Rua 1, 123");
    INSERT INTO medicos(nome,data_nascimento,cpf,crm,uc_crm,especialidade_id,telefone,endereco_completo) VALUES ("Paulo","1980-01-01","12345678901",123456,"SP",6,"(11) 1234-5678","Rua 1, 123");
    INSERT INTO medicos(nome,data_nascimento,cpf,crm,uc_crm,especialidade_id,telefone,endereco_completo) VALUES ("Pedro","1980-01-01","12345678901",123456,"SP",7,"(11) 1234-5678","Rua 1, 123");
    INSERT INTO medicos(nome,data_nascimento,cpf,crm,uc_crm,especialidade_id,telefone,endereco_completo) VALUES ("Fernanda","1985-05-10","98765432109",654321,"RJ",1,"(21) 9876-5432","Avenida 2, 456");
    INSERT INTO medicos(nome,data_nascimento,cpf,crm,uc_crm,especialidade_id,telefone,endereco_completo) VALUES ("Carlos","1978-09-15","56789012345",789012,"MG",2,"(31) 5678-9012","Rua 3, 789");
    INSERT INTO medicos(nome,data_nascimento,cpf,crm,uc_crm,especialidade_id,telefone,endereco_completo) VALUES ("Juliana","1990-03-25","34567890123",890123,"RS",3,"(51) 3456-7890","Avenida 4, 012");
    INSERT INTO medicos(nome,data_nascimento,cpf,crm,uc_crm,especialidade_id,telefone,endereco_completo) VALUES ("Ricardo","1982-07-12","67890123456",901234,"SC",4,"(48) 6789-0123","Rua 5, 234");
    INSERT INTO medicos(nome,data_nascimento,cpf,crm,uc_crm,especialidade_id,telefone,endereco_completo) VALUES ("Camila","1987-11-30","45678901234",123456,"SP",5,"(11) 4567-8901","Avenida 6, 567");
    INSERT INTO medicos(nome,data_nascimento,cpf,crm,uc_crm,especialidade_id,telefone,endereco_completo) VALUES ("Lucas","1995-02-18","89012345678",345678,"PR",6,"(41) 8901-2345","Rua 7, 890");
    INSERT INTO medicos(nome,data_nascimento,cpf,crm,uc_crm,especialidade_id,telefone,endereco_completo) VALUES ("Mariana","1989-06-05","23456789012",567890,"BA",7,"(71) 2345-6789","Avenida 8, 901");
    
 
    INSERT INTO convenios(nome,cnpj,tempo_carencia) VALUES ("Unimed","12345678901234","2021-01-01");
    INSERT INTO convenios(nome,cnpj,tempo_carencia) VALUES ("Amil","12345678901234","2021-01-01");
    INSERT INTO convenios(nome,cnpj,tempo_carencia) VALUES ("Sulamerica","12345678901234","2021-01-01");
    INSERT INTO convenios(nome,cnpj,tempo_carencia) VALUES ("Bradesco","12345678901234","2021-01-01");


INSERT INTO pacientes(nome,data_nascimento,cpf,rg,email,convenio_id) VALUES ("Maria","1980-01-01","11111111111","123456789","teste@gmail.com", 1);
INSERT INTO pacientes(nome,data_nascimento,cpf,rg,email,convenio_id) VALUES ("João","1980-01-01","22222222222","123456789","tt@gmail.com", 2);
INSERT INTO pacientes(nome,data_nascimento,cpf,rg,email,convenio_id) VALUES ("José","1980-01-01","33333333333","123456789","amz@amz.com", 3);
INSERT INTO pacientes(nome,data_nascimento,cpf,rg,email) VALUES ("Ana","1985-05-10","44444444444","987654321","xx@apple.com");
INSERT INTO pacientes(nome,data_nascimento,cpf,rg,email,convenio_id) VALUES ("Paulo","1978-09-15","55555555555","567890123","pop@apple.com", 2);
INSERT INTO pacientes(nome,data_nascimento,cpf,rg,email,convenio_id) VALUES ("Pedro","1990-03-25","66666666666","345678901","ss@apple.com", 3);
INSERT INTO pacientes(nome,data_nascimento,cpf,rg,email,convenio_id) VALUES ("Fernanda","1982-07-12","77777777777","678901234","xx@te.com", 2);
INSERT INTO pacientes(nome,data_nascimento,cpf,rg,email,convenio_id) VALUES ("Carlos","1987-11-30","88888888888","456789012","hoj@gmail.com", 3);
INSERT INTO pacientes(nome,data_nascimento,cpf,rg,email) VALUES ("Juliana","1995-02-18","99999999999","890123456","xx@gmail.com");
INSERT INTO pacientes(nome,data_nascimento,cpf,rg,email) VALUES ("Ricardo","1989-06-05","00000000000","234567890","goku@gmail.com");

INSERT INTO tipo_quarto(descricao,valor_diaria) VALUES ("apartamentos",100.00);
    INSERT INTO tipo_quarto(descricao,valor_diaria) VALUES ("quartos duplos ",200.00);
    INSERT INTO tipo_quarto(descricao,valor_diaria) VALUES ("enfermaria",300.00);

INSERT INTO quartos(numero,id_tipo_quarto) VALUES (1,1);
INSERT INTO quartos(numero,id_tipo_quarto) VALUES (2,1);
INSERT INTO quartos(numero,id_tipo_quarto) VALUES (3,2);
INSERT INTO quartos(numero,id_tipo_quarto) VALUES (4,2);
INSERT INTO quartos(numero,id_tipo_quarto) VALUES (5,3);
INSERT INTO quartos(numero,id_tipo_quarto) VALUES (6,3);

 

    INSERT INTO consultas(data_hora,paciente_id,valor,especialidades_medico_id,receitas,fk_medico_responsavel) VALUES ("2019-05-15",10,223.00,1,1,1);
    INSERT INTO consultas(data_hora,paciente_id,valor,especialidades_medico_id,receitas,fk_medico_responsavel) VALUES ("2020-07-20",10,323.00,2,2,2);
    INSERT INTO consultas(data_hora,paciente_id,valor,especialidades_medico_id,receitas,fk_medico_responsavel) VALUES ("2020-10-10",4,533.00,3,3,3);
    INSERT INTO consultas(data_hora,paciente_id,valor,especialidades_medico_id,receitas,fk_medico_responsavel) VALUES ("2017-12-05",3,221.00,4,2,4);
    INSERT INTO consultas(data_hora,paciente_id,valor,especialidades_medico_id,receitas,fk_medico_responsavel) VALUES ("2020-03-25",9,4345.00,5,2,5);
  
    

    



INSERT INTO internacoes(data_entrada,data_prev_alta,procedimento,paciente_id,quarto_id,enfermeiro_id) VALUES ("2018-01-01","2018-01-10","Cirurgia de apendicite",2,1,1);
INSERT INTO internacoes(data_entrada,data_prev_alta,procedimento,paciente_id,quarto_id,enfermeiro_id) VALUES ("2019-01-01","2019-01-10","Cirurgia de apendicite",2,2,2);
INSERT INTO internacoes(data_entrada,data_prev_alta,procedimento,paciente_id,quarto_id,enfermeiro_id) VALUES ("2020-01-01","2020-01-10","Cirurgia de apendicite",3,3,3);
INSERT INTO internacoes(data_entrada,data_prev_alta,procedimento,paciente_id,quarto_id,enfermeiro_id) VALUES ("2018-01-01","2018-01-10","Cirurgia de apendicite",4,3,4);
INSERT INTO internacoes(data_entrada,data_prev_alta,procedimento,paciente_id,quarto_id,enfermeiro_id) VALUES ("2019-01-01","2019-01-10","Cirurgia de apendicite",5,3,5);
INSERT INTO internacoes(data_entrada,data_prev_alta,procedimento,paciente_id,quarto_id,enfermeiro_id) VALUES ("2020-01-01","2020-01-10","Cirurgia de apendicite",5,2,6);
INSERT INTO internacoes(data_entrada,data_prev_alta,procedimento,paciente_id,quarto_id,enfermeiro_id) VALUES ("2018-01-01","2018-01-10","Cirurgia de apendicite",7,1,2);

