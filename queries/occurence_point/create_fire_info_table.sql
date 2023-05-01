-- Table: public.fire_info

-- DROP TABLE IF EXISTS public.fire_info;

CREATE TABLE IF NOT EXISTS public.fire_info
(
    "UNIQUEFIREID" character varying COLLATE pg_catalog."default" NOT NULL,
    "FIREYEAR" integer,
    --"UNITDOWNER" character varying COLLATE pg_catalog."default",
    "LOCALFIRENUM" character varying COLLATE pg_catalog."default",
    "UNITDPROTECT" character varying COLLATE pg_catalog."default",
    CONSTRAINT fire_info_pkey PRIMARY KEY ("UNIQUEFIREID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.fire_info
    OWNER to postgres;
