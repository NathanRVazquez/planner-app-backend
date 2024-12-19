# group-project-two-team-six  Backend 

## Deployment Steps
Install dart frog
1. dart pub global activate dart_frog_cli

2. Run dart_frog create project_name

3. start the server with dart_frog dev
- Build server starts on port 8080
- create a producton build with dart_frog build


4. Define Routes

5. Enabled ORM Using ORM Pub package
    - Use dart pub add orm
    - npx primsa init


6. Setup cloud auth proxy
- initialize Gcloud 
- download auth proxy client on computer. Link is on google website
- Follow this quickstart guide - https://cloud.google.com/sql/docs/postgres/connect-instance-auth-proxy

- troubleshooting
    - gcloud components update
    - gcloud auth login
    - sudo apt-get update
    - sudo apt-get install postgresql-client

Run $ ./cloud-sql-proxy hunter-439519:us-central1:hunter-db
in another terminal run psql "host=127.0.0.1 port=5432 sslmode=disable dbname=DB_Name user=postgres" then enter the password

Once that is completed all DB queries are secured through Cloud SQL Auth Proxy


- Initializing Prisma ORM 
    1. dart pub add orm
    2. make sure you have Node js installed
    3. npm i prisma@latest, other  versions are supported but I decided to use this one
    4. make sure there are no illegal characters in your BD password
        - Here are some illegal characters that caused me issues Semicolon, Left curly brackets, Right curly bracket, Equal sign, Double curly brackets 
    5. npx prisma db pull if the DB is already setup or you can use npx prisma generate once the db is setup
    6. change the provider in the schema file to the provider = "dart run orm"
    7. 
## Notes

## Todo List