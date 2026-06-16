
INSERT INTO public.quartos (nroa, numero, tipo) VALUES
(1, 101, 'individual'),
(1, 102, 'duplo'),
(2, 201, 'coletivo'),
(2, 202, 'individual');


INSERT INTO public.leitos (codq, numero, status) VALUES
(1, 1, 'disponivel'),
(1, 2, 'disponivel'),
(2, 1, 'disponivel'),
(2, 2, 'disponivel'),
(3, 1, 'disponivel'),
(3, 2, 'disponivel'),
(3, 3, 'disponivel'),
(4, 1, 'disponivel'),
(1, 3, 'disponivel'),
(2, 3, 'disponivel'),
(3, 4, 'disponivel'),
(4, 2, 'disponivel'),
(4, 3, 'disponivel');

update public.internacoes
set data_saida = current_date
where codi = 4


INSERT INTO public.pacientes (codp, nome, idade, cpf, doenca, cidade) VALUES
(101, 'Ana Souza',       32, 10111222333, 'hipertensao',      'Chapeco'),
(102, 'Bruno Lima',      45, 10211222333, 'diabetes',         'Xanxere'),
(103, 'Carla Mendes',    28, 10311222333, 'nao informada',    'Concordia'),
(104, 'Diego Ferreira',  55, 10411222333, 'artrite',          'Chapeco'),
(105, 'Elisa Castro',    38, 10511222333, 'asma',             'Sao Miguel'),
(106, 'Fabio Nunes',     61, 10611222333, 'nao informada',    'Chapeco'),
(107, 'Gabriela Rocha',  22, 10711222333, 'anemia',           'Pinhalzinho'),
(108, 'Henrique Alves',  47, 10811222333, 'nao informada',    'Chapeco'),
(109, 'Isabela Martins', 33, 10911222333, 'enxaqueca',        'Xanxere'),
(110, 'Jonas Pereira',   50, 11011222333, 'insuficiencia renal', 'Chapeco');


INSERT INTO public.medicos (codm, nome, idade, especialidade, cpf, cidade, nroa) VALUES
(101, 'Dr. Andre Melo',      40, 'cardiologia',    20111222333, 'Chapeco',   1),
(102, 'Dra. Beatriz Faria',  35, 'neurologia',     20211222333, 'Chapeco',   1),
(103, 'Dr. Caio Ramos',      50, 'ortopedia',      20311222333, 'Xanxere',   2),
(104, 'Dra. Diana Costa',    42, 'pediatria',      20411222333, 'Chapeco',   2),
(105, 'Dr. Eduardo Pinto',   38, 'clinico geral',  20511222333, 'Concordia', 1),
(106, 'Dra. Fernanda Leal',  45, 'dermatologia',   20611222333, 'Chapeco',   2),
(107, 'Dr. Gustavo Serra',   55, 'urologia',       20711222333, 'Chapeco',   1),
(108, 'Dra. Helena Vieira',  33, 'ginecologia',    20811222333, 'Xanxere',   2),
(109, 'Dr. Igor Campos',     48, 'psiquiatria',    20911222333, 'Chapeco',   1),
(110, 'Dra. Julia Moraes',   37, 'endocrinologia', 21011222333, 'Chapeco',   2);


CALL public.sp_registrar_internacao(3, 2, 1, 'Pneumonia');
CALL public.sp_registrar_internacao(4, 3, 3, 'Fratura de femur');
CALL public.sp_registrar_internacao(2, 1, 5, 'Pos-operatorio');
call public.sp_registrar_internacao(10,3, 6, 'Costela Fraturada');
call public.sp_registrar_internacao(99, 4, 4, 'queimadura no rosto');
call public.sp_registrar_internacao(101, 104, 10, 'perna amputada');
call public.sp_registrar_internacao(102, 103, 11, 'fraturas expostas');
call public.sp_registrar_internacao(103, 102, 12, 'dedo cortado');
call public.sp_registrar_internacao(104, 101, 13, 'olho machucado');