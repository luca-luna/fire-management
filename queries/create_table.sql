CREATE TABLE IF NOT EXISTS public.usfs
(
    "X" double precision,
    "Y" double precision,
    "OBJECTID" integer,
    "GLOBALID" character varying COLLATE pg_catalog."default",
    "FIREOCCURID" character varying COLLATE pg_catalog."default",
    "CN" character varying COLLATE pg_catalog."default",
    "REVDATE" timestamp with time zone,
    "FIRENAME" character varying COLLATE pg_catalog."default",
    "COMPLEXNAME" character varying COLLATE pg_catalog."default",
    "FIREYEAR" integer,
    "UNIQUEFIREID" character varying COLLATE pg_catalog."default",
    "SOFIRENUM" character varying COLLATE pg_catalog."default",
    "LOCALFIRENUM" character varying COLLATE pg_catalog."default",
    "REPORTINGUNIT" character varying COLLATE pg_catalog."default",
    "DISCOVERYDATETIME" time with time zone,
    "SIZECLASS" character varying COLLATE pg_catalog."default",
    "TOTALACRES" double precision,
    "STATCAUSE" character varying COLLATE pg_catalog."default",
    "COMMENTS" character varying COLLATE pg_catalog."default",
    "DATASOURCE" character varying COLLATE pg_catalog."default",
    "FIREOUTDATETIME" time with time zone,
    "OWNERAGENCY" character varying COLLATE pg_catalog."default",
    "UNITDOWNER" character varying COLLATE pg_catalog."default",
    "PROTECTIONAGENCY" character varying COLLATE pg_catalog."default",
    "UNITDPROTECT" character varying COLLATE pg_catalog."default",
    "LATDD83" double precision,
    "LONGDD83" double precision,
    "FIRETYPECATEGORY" character varying COLLATE pg_catalog."default",
    "POINTTYPE" character varying COLLATE pg_catalog."default",
    "PERIMEXISTS" character varying COLLATE pg_catalog."default",
    "FIRESTATQC" character varying COLLATE pg_catalog."default",
    "DBSOURCEID" integer,
    "DBSOURCEDATE" time with time zone
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.usfs
    OWNER to postgres;
