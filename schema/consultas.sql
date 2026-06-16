-- public.consultas definição

-- Drop table

-- DROP TABLE public.consultas;

CREATE TABLE public.consultas (
	codm int4 NOT NULL,
	codp int4 NOT NULL,
	"data" date NOT NULL,
	hora time NULL,
	CONSTRAINT consultas_pkey PRIMARY KEY (codm, codp, data)
);
CREATE INDEX idx_consultas_codm_codp ON public.consultas USING btree (codm, codp);


-- public.consultas chaves estrangeiras

ALTER TABLE public.consultas ADD CONSTRAINT consultas_codm_fkey FOREIGN KEY (codm) REFERENCES public.medicos(codm);
ALTER TABLE public.consultas ADD CONSTRAINT consultas_codp_fkey FOREIGN KEY (codp) REFERENCES public.pacientes(codp);