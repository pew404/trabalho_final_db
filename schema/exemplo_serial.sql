-- public.exemplo_serial definição

-- Drop table

-- DROP TABLE public.exemplo_serial;

CREATE TABLE public.exemplo_serial (
	id serial4 NOT NULL,
	texto varchar(100) NULL,
	CONSTRAINT exemplo_serial_pkey PRIMARY KEY (id)
);