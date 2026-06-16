-- public.internacoes definição

-- Drop table

-- DROP TABLE public.internacoes;

CREATE TABLE public.internacoes (
	codi serial4 NOT NULL,
	codp int4 NOT NULL,
	codm int4 NOT NULL,
	codl int4 NOT NULL,
	data_entrada date DEFAULT CURRENT_DATE NOT NULL,
	data_saida date NULL,
	motivo varchar(100) NOT NULL,
	CONSTRAINT ck_internacoes_datas CHECK (((data_saida IS NULL) OR (data_saida >= data_entrada))),
	CONSTRAINT internacoes_pkey PRIMARY KEY (codi)
);

-- Table Triggers

create trigger tg_liberar_leito after
update
    on
    public.internacoes for each row execute function fn_liberar_leito();


-- public.internacoes chaves estrangeiras

ALTER TABLE public.internacoes ADD CONSTRAINT internacoes_codl_fkey FOREIGN KEY (codl) REFERENCES public.leitos(codl);
ALTER TABLE public.internacoes ADD CONSTRAINT internacoes_codm_fkey FOREIGN KEY (codm) REFERENCES public.medicos(codm);
ALTER TABLE public.internacoes ADD CONSTRAINT internacoes_codp_fkey FOREIGN KEY (codp) REFERENCES public.pacientes(codp);