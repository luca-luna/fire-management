-- Table: public.class

-- DROP TABLE IF EXISTS public.class;

CREATE TABLE IF NOT EXISTS public.class
(
    "SIZECLASS" character varying COLLATE pg_catalog."default",
    "TOTALACRES" double precision NOT NULL,
    CONSTRAINT class_pkey PRIMARY KEY ("TOTALACRES")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.class
    OWNER to postgres;
