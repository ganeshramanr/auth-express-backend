# auth-express-backend

Backend server is built using nodejs and express framework
This server provides 2 Post apis
  1. Register user http://localhost:3001/api/user/register
     This takes 4 parameters(email, firstname, lastname, password) in request body and returns success if registration goes through
     Sample curl:
       curl -d '{"email":"ganeshraman.r@gmail.com", "firstname":"Ganesh", "lastname":"Raman", "password":"easypassword"}' -H "Content-Type: application/json" -H  -X POST http://localhost:3001/api/user/register
     
  3. Login http://localhost:3001/api/user/login
     This takes 2 parameters(email, password) in request body and returns success if authentication goes through. It returns JWT token along with the response
     Sample curl:
       curl -d '{"email":"ganeshraman.r@gmail.com", "password":"easypassword"}' -H "Content-Type: application/json" -X POST http://localhost:3001/api/user/login

Steps
1. Clone this repo
   > git clone https://github.com/ganeshramanr/auth-express-backend.git
2. Go to folder auth-express-backend
   > cd auth-express-backend
3. Install packages
  > npm install
4. Install postgres server in you local machine or create postgres RDS in aws cloud
5. Connect to postgres and create database 'auth_db' and create table 'users'. For commands to create db and table refer create_db.sql file in project root folder
4. Create .env file from .env.template and add below 2 environment variable
  DATABASE_URL="postgres://ganesh@localhost:5432/auth_db" # replace this string appropriately
  SECRET="any  complex secret string"
5. Compile typescript file to javascript (This will create app.js file in project root folder)
  > npx tsc
6. Start/Run your server
  > node app.js
  This will bring up your server runnning in port 3001
  You can go to browser and visit http://localhost:3001/api and if the page loads with "Api server is running" then your server is up and running 
