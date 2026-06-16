-- public.funcionarios definição

-- Drop table

-- DROP TABLE public.funcionarios;

CREATE TABLE public.funcionarios (
	codf int4 NOT NULL,
	nome varchar(40) NOT NULL,
	idade int2 NULL,
	cpf numeric(11) NULL,
	cidade varchar(30) NULL,
	salario numeric(10) NULL,
	CONSTRAINT ck_funcionarios_idade CHECK ((idade >= 0)),
	CONSTRAINT ck_funcionarios_salario CHECK ((salario >= (0)::numeric)),
	CONSTRAINT funcionarios_cpf_key UNIQUE (cpf),
	CONSTRAINT funcionarios_pkey PRIMARY KEY (codf),
	CONSTRAINT uk_funcionarios_cpf UNIQUE (cpf)
);