-- This file will drop and recreate all tables

-- fire_perimeter
DROP TABLE IF EXISTS public.fire_perimeter;

CREATE TABLE IF NOT EXISTS public.fire_perimeter
(
    "OBJECTID" integer NOT NULL,
    "GLOBALID" character varying COLLATE pg_catalog."default" DEFAULT 1,
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
    "DISCOVERYDATETIME" timestamp with time zone,
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
    "DBSOURCEID" integer NOT NULL,
    "DBSOURCEDATE" time with time zone NOT NULL,
    CONSTRAINT fire_perimeter_pkey PRIMARY KEY ("OBJECTID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.fire_perimeter
    OWNER to postgres;


-- occurrence_point

DROP TABLE IF EXISTS public.occurrence_point;

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
    "FIREYEAR" integer,
    "UNIQFIREID" character varying COLLATE pg_catalog."default",
    "SOFIRENUM" character varying COLLATE pg_catalog."default",
    "LOCALFIRENUM" character varying COLLATE pg_catalog."default",
    "REPORTINGUNIT" character varying COLLATE pg_catalog."default",
    "DISCOVERYDATETIME" timestamp with time zone,
    "SIZECLASS" character varying COLLATE pg_catalog."default",
    "TOTALACRES" double precision,
    "STATCAUSE" character varying COLLATE pg_catalog."default",
    "COMMENTS" character varying COLLATE pg_catalog."default",
    "DATASOURCE" character varying COLLATE pg_catalog."default",
    "FIREOUTDATETIME" time with time zone,
    "OWNERAGENCY" character varying COLLATE pg_catalog."default",
    "UNITIDOWNER" character varying COLLATE pg_catalog."default",
    "PROTECTIONAGENCY" character varying COLLATE pg_catalog."default",
    "UNITIDPROTECT" character varying COLLATE pg_catalog."default",
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



-- class

DROP TABLE IF EXISTS public.class;

CREATE TABLE IF NOT EXISTS public.class
(
    "SIZECLASS" character varying COLLATE pg_catalog."default",
    "TOTALACRES" double precision NOT NULL,
    CONSTRAINT class_pkey PRIMARY KEY ("TOTALACRES")
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.class
    OWNER to postgres;



-- fire_info

DROP TABLE IF EXISTS public.fire_info;

CREATE TABLE IF NOT EXISTS public.fire_info
(
    "UNIQFIREID" character varying COLLATE pg_catalog."default" NOT NULL,
    "FIREYEAR" integer,
    "UNITIDPROTECT" character varying COLLATE pg_catalog."default",
    "LOCALFIRENUM" character varying COLLATE pg_catalog."default",
    CONSTRAINT fire_info_pkey PRIMARY KEY ("UNIQFIREID")
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.fire_info
    OWNER to postgres;


-- year

DROP TABLE IF EXISTS public.year;

CREATE TABLE IF NOT EXISTS public.year
(
	"DISCOVERYDATETIME" timestamp with time zone,
	"FIREYEAR" integer,

    CONSTRAINT year_pkey PRIMARY KEY ("DISCOVERYDATETIME")
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.year
    OWNER to postgres;



-- owner_agency

DROP TABLE IF EXISTS public.owner_agency;

CREATE TABLE IF NOT EXISTS public.owner_agency
(
    "UNITIDOWNER" character varying COLLATE pg_catalog."default",
	"OWNERAGENCY" character varying COLLATE pg_catalog."default",
    CONSTRAINT owner_agency_pkey PRIMARY KEY ("UNITIDOWNER")
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.owner_agency
    OWNER to postgres;




-- protection_agency

DROP TABLE IF EXISTS public.protection_agency;

CREATE TABLE IF NOT EXISTS public.protection_agency
(
    "UNITIDPROTECT" character varying COLLATE pg_catalog."default",
	"PROTECTIONAGENCY" character varying COLLATE pg_catalog."default",
	
    CONSTRAINT protection_agency_pkey PRIMARY KEY ("UNITIDPROTECT")
)
TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.protection_agency
    OWNER to postgres;
