-- public.pacientes definição

-- Drop table

-- DROP TABLE public.pacientes;

CREATE TABLE public.pacientes (
	codp int4 NOT NULL,
	nome varchar(40) NOT NULL,
	idade int2 NOT NULL,
	cpf numeric(11) NULL,
	doenca varchar(40) DEFAULT 'nao informada'::character varying NOT NULL,
	cidade bpchar(30) NULL,
	CONSTRAINT ck_pacientes_idade CHECK ((idade >= 0)),
	CONSTRAINT pacientes_cpf_key UNIQUE (cpf),
	CONSTRAINT pacientes_pkey PRIMARY KEY (codp),
	CONSTRAINT uk_pacientes_cpf UNIQUE (cpf)
);
CREATE INDEX idx_pacientes_doenca ON public.pacientes USING btree (doenca);

-- Table Triggers

create trigger tg_upper_nome_paciente before
insert
    on
    public.pacientes for each row execute function fn_upper_nome_paciente();
create trigger tg_log_pacientes after
delete
    or
update
    on
    public.pacientes for each row execute function fn_log_auditoria();