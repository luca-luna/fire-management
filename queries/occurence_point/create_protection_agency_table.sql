-- Table: public.occurence_point

-- DROP TABLE IF EXISTS public.occurence_point;

CREATE TABLE IF NOT EXISTS public.protection_agency
(
    "UNITDPROTECT" character varying COLLATE pg_catalog."default",
	"PROTECTIONAGENCY" character varying COLLATE pg_catalog."default",
	
    CONSTRAINT protection_agency_pkey PRIMARY KEY ("UNITDPROTECT")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.protection_agency
    OWNER to postgres;
