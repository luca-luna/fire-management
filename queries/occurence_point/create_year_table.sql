-- Table: public.occurence_point

-- DROP TABLE IF EXISTS public.occurence_point;

CREATE TABLE IF NOT EXISTS public.year
(
	"DISCOVERYDATETIME" time with time zone,
	"FIREYEAR" integer,

    CONSTRAINT year_pkey PRIMARY KEY ("DISCOVERYDATETIME")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.year
    OWNER to postgres;
