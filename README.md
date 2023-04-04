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
  
