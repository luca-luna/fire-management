-- Table: public.fire_perimeter

-- DROP TABLE IF EXISTS public.fire_perimeter;

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
    "DBSOURCEID" integer NOT NULL,
    "DBSOURCEDATE" time with time zone NOT NULL,
    CONSTRAINT fire_perimeter_pkey PRIMARY KEY ("OBJECTID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.fire_perimeter
    OWNER to postgres;

COPY fire_perimeter -- table name
FROM '/Users/lucaluna/460/National_USFS_Fire_Perimeter_(Feature_Layer).csv'
DELIMITER ','
CSV HEADER;


-- Table: public.occurence_point

-- DROP TABLE IF EXISTS public.occurence_point;

CREATE TABLE IF NOT EXISTS public.occurence_point
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
    "UNIQUEFIREID" character varying COLLATE pg_catalog."default",
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
    "UNITDOWNER" character varying COLLATE pg_catalog."default",
    "PROTECTIONAGENCY" character varying COLLATE pg_catalog."default",
    "UNITDPROTECT" character varying COLLATE pg_catalog."default",
    "LATDD83" double precision,
    "LONGDD83" double precision,
    "FIRETYPECATEGORY" character varying COLLATE pg_catalog."default",
    "POINTTYPE" character varying COLLATE pg_catalog."default",
    "PERIMEXISTS" character varying COLLATE pg_catalog."default",
    "FIRESTATQC" character varying COLLATE pg_catalog."default",
    "DBSOURCEID" integer NOT NULL,
    "DBSOURCEDATE" time with time zone NOT NULL,
    CONSTRAINT occurence_point_pkey PRIMARY KEY ("OBJECTID")
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.occurence_point
    OWNER to postgres;

COPY occurence_point -- table name
FROM '/Users/lucaluna/460/National_USFS_Fire_Occurrence_Point_(Feature_Layer).csv'
DELIMITER ','
CSV HEADER;

DROP TABLE IF EXISTS public.occurencepoint;

CREATE TABLE IF NOT EXISTS public.occurencepoint_yearly
(
    "X" double precision,
    "Y" double precision,
    "OBJECTID" integer,
    "DISCOVER_YEAR" character varying COLLATE pg_catalog."default",
    "FIRE_NUMBER" character varying COLLATE pg_catalog."default",
    "COUNTY" integer,
    "TOTAL_ACRES_BURNED" double precision,
    "TOPO_LANDFORM_ORIGIN" character varying COLLATE pg_catalog."default",
    "PRESCRIBED_FIRE" character varying COLLATE pg_catalog."default",
    "SLOPE" integer,
    "ELEVATION" integer,
    "OTHER_FUEL_MODEL" character varying COLLATE pg_catalog."default",
    "REP_WX_STATION" integer,
    "LAT_DEG" integer,
    "LAT_MIN" integer,
    "LAT_SEC" integer,
    "LONG_DEG" integer,
    "LONG_MIN" integer,
    "LONG_SEC" integer,
    "TOWNSHIP" character varying COLLATE pg_catalog."default",
    "RANGE" character varying COLLATE pg_catalog."default",
    "SECTION" integer,
    "SUB_SECTION" character varying COLLATE pg_catalog."default",
    "WIND_SPEED" integer,
    "DISCOVERED_BY_DESCR" character varying COLLATE pg_catalog."default",
    "FIRE_NAME" character varying COLLATE pg_catalog."default",
    "RECORD_ENTRY_DATE" time with time zone,
    "AGENCY_ACRES" double precision,
    "OTHER_ACRES_INSIDE" double precision,
    "OTHER_ACRES_OUTSIDE" double precision,
    "DISTRICT" integer,
    "LOCAL_FIRE_NUMBER" character varying COLLATE pg_catalog."default",
    "PRESCRIBED_ACRES" double precision,
    "IGNITION" time with time zone,
    "DISCOVERY" time with time zone,
    "STRATEGY_MET" time with time zone,
    "FIRE_OUT" time with time zone,
    "SUBMITTED_DATE" time with time zone,
    "APPROVED_DATE" time with time zone,
    "STATE_CODE" character varying COLLATE pg_catalog."default",
    "CONTAINED" time with time zone,
    "COUNTY_STATE_CODE" character varying COLLATE pg_catalog."default",
    "LOCATION" character varying COLLATE pg_catalog."default",
    "FIRE_MANAGEMENT_CODE" character varying COLLATE pg_catalog."default",
    "COMPLEX_FIRE" character varying COLLATE pg_catalog."default",
    "WUI_FIRE" character varying COLLATE pg_catalog."default",
    "WUI_ACRES" character varying COLLATE pg_catalog."default",
    "OBJECTIVES" character varying COLLATE pg_catalog."default",
    "CREATED_DATE" time with time zone,
    "LAST_MODIFIED_DATE" time with time zone,
    "POO_LATITUDE" double precision,
    "POO_LONGITUDE" double precision,
    "COMPLEX_NAME" character varying COLLATE pg_catalog."default",
    "STATION_TYPE" integer,
    "STATION_NAME" character varying COLLATE pg_catalog."default",
    "ASPECT" character varying COLLATE pg_catalog."default",
    "PRINCIPAL_MERIDIAN" character varying COLLATE pg_catalog."default",
    "STATISTICAL_CAUSE" character varying COLLATE pg_catalog."default",
    "FIRE_SIZE_CLASS" character varying COLLATE pg_catalog."default",
    "FIRE_DETECTOR" character varying COLLATE pg_catalog."default",
    "NFDRS_FUEL_MODEL" character varying COLLATE pg_catalog."default",
    "COVER_CLASS" character varying COLLATE pg_catalog."default",
    "FIRE_INTENSITY_LEVEL" character varying COLLATE pg_catalog."default",
    "INITIAL_STRATEGY" character varying COLLATE pg_catalog."default",
    "LOCAL_TIMEZONE" character varying COLLATE pg_catalog."default",
    "PROTECTING_AGENCY_AT_ORIGIN" character varying COLLATE pg_catalog."default",
    "OWNERSHIP_AGENCY_AT_ORIGIN" character varying COLLATE pg_catalog."default",
    "STATE_NAME" character varying COLLATE pg_catalog."default",
    "COUNTY_NAME" character varying COLLATE pg_catalog."default",
    "REPORT_UNIT" character varying COLLATE pg_catalog."default",
    "REPORT_UNIT_NAME" character varying COLLATE pg_catalog."default",
    "ADMIN_UNIT" character varying COLLATE pg_catalog."default",
    "ADMIN_UNIT_NAME" character varying COLLATE pg_catalog."default",
    "OWNERSHIP_UNIT" character varying COLLATE pg_catalog."default",
    "OWNERSHIP_UNIT_NAME" character varying COLLATE pg_catalog."default",
    "PROTECTION_UNIT" integer,
    "PROTECTION_UNIT_NAME" character varying COLLATE pg_catalog."default",
    "INITIAL_RESPONSE" time with time zone,
    "SHAPE" character varying COLLATE pg_catalog."default"
)

TABLESPACE pg_default;

ALTER TABLE IF EXISTS public.occurencepoint_yearly
    OWNER to postgres;

COPY occurencepoint_yearly -- table name
FROM '/Users/lucaluna/460/FIRESTAT_Fire_Occurrence_-_Yearly_Update_(Feature_Layer).csv'
DELIMITER ','
CSV HEADER;

