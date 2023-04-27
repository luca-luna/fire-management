CREATE TABLE IF NOT EXISTS public.owner_agency
(
    "UNITDOWNER" character varying COLLATE pg_catalog."default",
	"OWNERAGENCY" character varying COLLATE pg_catalog."default",
    CONSTRAINT owner_agency_pkey PRIMARY KEY ("UNITDOWNER")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.owner_agency
    OWNER to postgres;
