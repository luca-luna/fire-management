# fire-management


In the api folder you will need to create a .env file. The file should contain the following lines:

DATABASE_HOST="127.0.0.1"

DATABASE="FireManagement"

DATABASE_USERNAME="postgres"

DATABASE_PASSWORD="secret password"

DATABASE_PORT=port that the database is running on

For now during local development the host will be localhost, password will be what you set in postgres on your machine, and the port will be the port it is running on.

To start the application navigate to api and run the command:
  npm start
  
In another terminal navigate to client and run the command:
  npm start
  


To setup the database from the two data sets and normalize them into a usable database run the following queries in order:

// loading csv datasets into tables
master_query.sql

// load datasets
master_query.sql

// remove malformed records - design decision to remove instead fo restore 
clean_FIREOCCURID_duplicates.sql
clean_OWNERAGENCY.sql
clean_PROTECTIONAGENCY.sql
clean_SIZECLASS_and_TOTALACRES.sql
clean_DISCOVERYDATE.sql
clean_GLOBALID.sql


// create new tables for normalization
create_owner_agency_table.sql
create_protection_agency_table.sql
create_year_table.sql
create_class_table.sql
create_occurrence_point_table.sql
create_fire_info_table.sql

// populate those tables from the dataset
create_class_table_from_op.sql
create_fire_info_table_from_op.sql
create_owner_agency_table_from_op.sql
create_protection_agency_table_from_op.sql
create_occurrence_point_table_from_occurence_point.sql
create_year_from_op.sql


