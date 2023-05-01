-- Table: public.occurence_point

--DROP TABLE IF EXISTS public.occurrence_point;

CREATE TABLE IF NOT EXISTS public.occurrence_point
(
    "X" double precision,
    "Y" double precision,
    "OBJECTID" integer NOT NULL DEFAULT 1,
    "GLOBALID" character varying COLLATE pg_catalog."default",
    "FIREOCCURID" character varying COLLATE pg_catalog."default",
    "CN" character varying COLLATE pg_catalog."default",
    "REVDATE" timestamp with time zone,
    "FIRENAME" character varying COLLATE pg_catalog."default",
    "COMPLEXNAME" character varying COLLATE pg_catalog."default",
    "SOFIRENUM" character varying COLLATE pg_catalog."default",
    "LOCALFIRENUM" character varying COLLATE pg_catalog."default",
    "REPORTINGUNIT" character varying COLLATE pg_catalog."default",
    "DISCOVERYDATETIME" timestamp with time zone,
    
    "TOTALACRES" double precision,
    
    "STATCAUSE" character varying COLLATE pg_catalog."default",
    "COMMENTS" character varying COLLATE pg_catalog."default",
    "DATASOURCE" character varying COLLATE pg_catalog."default",
    "FIREOUTDATETIME" time with time zone,
    
    "UNITDOWNER" character varying COLLATE pg_catalog."default",
    "UNITDPROTECT" character varying COLLATE pg_catalog."default",
    
    "LATDD83" double precision,
    "LONGDD83" double precision,
    "FIRETYPECATEGORY" character varying COLLATE pg_catalog."default",
    "POINTTYPE" character varying COLLATE pg_catalog."default",
    "PERIMEXISTS" character varying COLLATE pg_catalog."default",
    "FIRESTATQC" character varying COLLATE pg_catalog."default",
    "DBSOURCEID" integer NOT NULL,
    "DBSOURCEDATE" time with time zone NOT NULL,
    CONSTRAINT occurrence_point_pkey PRIMARY KEY ("OBJECTID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.occurrence_point
    OWNER to postgres;
