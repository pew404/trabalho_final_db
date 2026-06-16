-- public.quartos definição

-- Drop table

-- DROP TABLE public.quartos;

CREATE TABLE public.quartos (
	codq int4 GENERATED ALWAYS AS IDENTITY( INCREMENT BY 1 MINVALUE 1 MAXVALUE 2147483647 START 1 CACHE 1 NO CYCLE) NOT NULL,
	nroa int4 NOT NULL,
	numero int4 NOT NULL,
	tipo varchar(20) DEFAULT 'individual'::character varying NOT NULL,
	CONSTRAINT ck_quartos_tipo CHECK (((tipo)::text = ANY ((ARRAY['individual'::character varying, 'duplo'::character varying, 'coletivo'::character varying])::text[]))),
	CONSTRAINT quartos_pkey PRIMARY KEY (codq),
	CONSTRAINT uk_quartos_numero UNIQUE (numero)
);


-- public.quartos chaves estrangeiras

ALTER TABLE public.quartos ADD CONSTRAINT quartos_nroa_fkey FOREIGN KEY (nroa) REFERENCES public.ambulatorios(nroa);