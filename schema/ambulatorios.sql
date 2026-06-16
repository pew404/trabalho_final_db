-- public.ambulatorios definição

-- Drop table

-- DROP TABLE public.ambulatorios;

CREATE TABLE public.ambulatorios (
	nroa int4 NOT NULL,
	andar numeric(3) NOT NULL,
	capacidade int2 NULL,
	CONSTRAINT ambulatorios_pkey PRIMARY KEY (nroa),
	CONSTRAINT ck_ambulatorios_andar CHECK ((andar >= (0)::numeric)),
	CONSTRAINT ck_ambulatorios_capacidade CHECK ((capacidade >= 1))
);

-- Table Triggers

create trigger tg_log_ambulatorios after
delete
    or
update
    on
    public.ambulatorios for each row execute function fn_log_auditoria();