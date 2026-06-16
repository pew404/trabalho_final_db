-- public.medicos definição

-- Drop table

-- DROP TABLE public.medicos;

CREATE TABLE public.medicos (
	codm int4 NOT NULL,
	nome varchar(40) NOT NULL,
	idade int2 NOT NULL,
	especialidade bpchar(20) NULL,
	cpf numeric(11) NULL,
	cidade varchar(30) NULL,
	nroa int4 NULL,
	CONSTRAINT ck_medicos_idade CHECK ((idade >= 16)),
	CONSTRAINT medicos_cpf_key UNIQUE (cpf),
	CONSTRAINT medicos_pkey PRIMARY KEY (codm),
	CONSTRAINT uk_medicos_cpf UNIQUE (cpf)
);
CREATE INDEX idx_medicos_especialidade ON public.medicos USING btree (especialidade);

-- Table Triggers

create trigger tg_log_medicos after
delete
    or
update
    on
    public.medicos for each row execute function fn_log_auditoria();
create trigger tg_valida_medico_60_andar1 before
insert
    or
update
    on
    public.medicos for each row execute function fn_valida_medico_60_andar1();


-- public.medicos chaves estrangeiras

ALTER TABLE public.medicos ADD CONSTRAINT medicos_nroa_fkey FOREIGN KEY (nroa) REFERENCES public.ambulatorios(nroa);