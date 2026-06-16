-- public.leitos definição

-- Drop table

-- DROP TABLE public.leitos;

CREATE TABLE public.leitos (
	codl serial4 NOT NULL,
	codq int4 NOT NULL,
	numero int4 NOT NULL,
	status varchar(15) DEFAULT 'disponivel'::character varying NOT NULL,
	CONSTRAINT ck_leitos_status CHECK (((status)::text = ANY ((ARRAY['disponivel'::character varying, 'ocupado'::character varying, 'manutencao'::character varying])::text[]))),
	CONSTRAINT leitos_pkey PRIMARY KEY (codl),
	CONSTRAINT uk_leitos_numero_quarto UNIQUE (codq, numero)
);


-- public.leitos chaves estrangeiras

ALTER TABLE public.leitos ADD CONSTRAINT leitos_codq_fkey FOREIGN KEY (codq) REFERENCES public.quartos(codq);