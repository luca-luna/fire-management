DROP TABLE IF EXISTS public.fire_perimeter;

CREATE TABLE IF NOT EXISTS public.fire_perimeter
(
    "OBJECTID" integer,
    "GLOBALID" character varying COLLATE pg_catalog."default",
    "FIREOCCURID" character varying COLLATE pg_catalog."default",
    "CN" character varying COLLATE pg_catalog."default",
    "REVDATE" time with time zone,
    "FIRENAME" character varying COLLATE pg_catalog."default",
    "COMPLEXNAME" character varying COLLATE pg_catalog."default",
    "FIREYEAR" integer,
    "UNIQFIREID" character varying COLLATE pg_catalog."default",
    "SOFIRENUM" character varying COLLATE pg_catalog."default",
    "LOCALFIRENUM" character varying COLLATE pg_catalog."default",
    "REPORTINGUNIT" character varying COLLATE pg_catalog."default",
    "DISCOVERYDATETIME" time with time zone,
    "TOTALACRES" double precision,
    "GISACRES" double precision,
    "SIZECLASS" character varying COLLATE pg_catalog."default",
    "STATCAUSE" character varying COLLATE pg_catalog."default",
    "COMMENTS" character varying COLLATE pg_catalog."default",
    "DATASOURCE" character varying COLLATE pg_catalog."default",
    "PERIMETERDATETIME" time with time zone,
    "OWNERAGENCY" character varying COLLATE pg_catalog."default",
    "UNITIDOWNER" character varying COLLATE pg_catalog."default",
    "PROTECTIONAGENCY" character varying COLLATE pg_catalog."default",
    "UNITIDPROTECT" character varying COLLATE pg_catalog."default",
    "FEATURECAT" character varying COLLATE pg_catalog."default",
    "FIRESTATQC" character varying COLLATE pg_catalog."default",
    "SHAPEAREA" double precision,
    "SHAPELEN" double precision,
    "DBSOURCEID" integer,
    "DBSOURCEDATE" time with time zone
)

TABLESPACE pg_default;

--ALTER TABLE IF EXISTS public.usfs
--    OWNER to postgres;

COPY fire_perimeter -- table name
FROM '/Users/lucaluna/460/National_USFS_Fire_Perimeter_(Feature_Layer).csv'
DELIMITER ','
CSV HEADER;
