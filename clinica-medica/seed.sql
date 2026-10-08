USE clinica_medica;

INSERT INTO enderecos (rua, numero, complemento, bairro, cidade, estado) VALUES
    ('Rua das Flores',         '120', NULL,       'Centro',        'São Paulo',       'SP'),
    ('Av. Brasil',             '450', 'Apto 32', 'Jardim América', 'São Paulo',       'SP'),
    ('Rua Sete de Setembro', '88',  NULL,       'Vila Nova',     'Campinas',        'SP'),
    ('Rua da Paz',             '210', 'Casa 2',  'Bela Vista',    'São Paulo',       'SP'),
    ('Av. Paulista',           '900', 'Cj. 51',  'Bela Vista',    'São Paulo',       'SP'),
    ('Rua Tiradentes',         '33',  NULL,       'Centro',        'Santo André',     'SP'),
    ('Rua das Acácias',        '77',  NULL,       'Jardim Paulista','São Paulo',      'SP'),
    ('Rua XV de Novembro',     '500', NULL,       'Centro',        'Ribeirão Preto',  'SP');

INSERT INTO convenios (nome, mensalidade) VALUES
    ('Unimed',           320.00),
    ('Bradesco Saúde',  280.00),
    ('Amil',             250.00),
    ('SulAmérica',       310.00),
    ('Particular',         0.00);

INSERT INTO pacientes (nome, cpf, data_nasc, telefone, email, id_endereco) VALUES
    ('Ana Lima',            '111.111.111-11', '1990-03-15', '(11) 91111-1111', 'ana@email.com',       1),
    ('Bruno Costa',         '222.222.222-22', '1985-07-22', '(11) 92222-2222', 'bruno@email.com',     2),
    ('Carla Souza',         '333.333.333-33', '2000-01-10', '(19) 93333-3333', 'carla@email.com',     3),
    ('Diego Martins',       '444.444.444-44', '1978-11-05', '(11) 94444-4444', 'diego@email.com',     4),
    ('Elisa Ferreira',      '555.555.555-55', '1995-06-30', '(11) 95555-5555', 'elisa@email.com',     5),
    ('Felipe Rocha',        '666.666.666-66', '1982-09-18', '(11) 96666-6666', NULL,                    6),
    ('Gabriela Nunes',      '777.777.777-77', '2005-04-25', '(11) 97777-7777', 'gabi@email.com',      7),
    ('Henrique Alves',      '888.888.888-88', '1970-12-01', '(16) 98888-8888', 'henrique@email.com', 8);

INSERT INTO planos_paciente (id_paciente, id_convenio, data_adesao, status_pgto) VALUES
    (1, 1, '2022-01-01', 'em_dia'),       
    (2, 2, '2021-06-15', 'inadimplente'),  
    (3, 3, '2023-03-01', 'em_dia'),        
    (4, 4, '2020-09-10', 'em_dia'),        
    (5, 1, '2022-11-20', 'cancelado'),     
    (6, 5, '2023-01-05', 'em_dia'),       
    (7, 2, '2024-02-01', 'em_dia'),        
    (8, 3, '2019-07-15', 'inadimplente'); 

INSERT INTO especialidades (nome) VALUES
    ('Clínica Geral'),
    ('Cardiologia'),
    ('Pediatria'),
    ('Ortopedia'),
    ('Dermatologia');

INSERT INTO medicos (nome, crm, id_especialidade) VALUES
    ('Dr. Alberto Santos',  '11111', 1),  
    ('Dra. Beatriz Lima',   '22222', 2), 
    ('Dr. Carlos Mendes',   '33333', 3),  
    ('Dra. Diana Rocha',    '44444', 4),  
    ('Dr. Eduardo Farias',  '55555', 5);  

INSERT INTO horarios_agendamento (id_medico, data, horario, disponivel) VALUES
    (1, '2024-08-02', '08:00', 'S'),
    (1, '2024-08-02', '08:30', 'N'),
    (1, '2024-08-05', '09:00', 'S'),
    (2, '2024-08-07', '10:00', 'S'),
    (1, '2024-08-02', '10:00', 'S');

INSERT INTO consultas (id_medico, id_paciente, data, hora, duracao_min, presenca_paciente) VALUES
    (1, 1, '2024-08-02', '08:00', 30, 'S'),
    (1, 2, '2024-08-02', '08:30', 30, 'N'), 
    (1, 3, '2024-08-05', '09:00', 30, 'S'),
    (2, 4, '2024-08-07', '10:00', 45, 'S'),
    (2, 5, '2024-08-07', '10:45', 45, 'N'),  
    (3, 7, '2024-08-10', '08:00', 30, 'S'),
    (3, 6, '2024-08-10', '08:30', 30, 'N'), 
    (4, 8, '2024-08-15', '14:00', 40, 'S'),
    (5, 1, '2024-08-20', '15:00', 30, 'S'),
    (1, 4, '2024-08-22', '09:00', 30, 'N'),  
    (1, 2, '2024-09-03', '08:00', 30, 'S'),
    (1, 5, '2024-09-03', '08:30', 30, 'S'),
    (2, 1, '2024-09-10', '10:00', 45, 'S'),
    (2, 8, '2024-09-10', '10:45', 45, 'S'),
    (3, 3, '2024-09-12', '08:00', 30, 'N'), 
    (3, 7, '2024-09-12', '08:30', 30, 'S'),
    (4, 6, '2024-09-18', '14:00', 40, 'S'),
    (5, 4, '2024-09-20', '15:00', 30, 'S'),
    (1, 7, '2024-09-25', '09:00', 30, 'S'),
    (2, 3, '2024-09-25', '10:00', 45, 'S'),
    (1, 1, '2024-10-01', '08:00', 30, 'S'),
    (1, 2, '2024-10-01', '09:00', 30, 'S'),
    (1, 3, '2024-10-03', '08:00', 30, 'S');