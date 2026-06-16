-- public.log definição

-- Drop table

-- DROP TABLE public.log;

CREATE TABLE public.log (
	identificador serial4 NOT NULL,
	tabela varchar(50) NULL,
	operacao varchar(10) NULL,
	dadosnovos text NULL,
	dadosantigos text NULL,
	quando timestamp DEFAULT CURRENT_TIMESTAMP NULL,
	CONSTRAINT log_pkey PRIMARY KEY (identificador)
);