## Set Up PostgreSQL Database

Ensure PostgreSQL is installed and running, then:

````bash
sudo -u postgres psql
````
Inside PostgreSQL shell:
````sql
CREATE DATABASE my_db_name;
CREATE USER my_db_user WITH PASSWORD 'my_db_password';
ALTER ROLE my_db_user SET client_encoding TO 'utf8';
ALTER ROLE my_db_user SET default_transaction_isolation TO 'read committed';
ALTER ROLE my_db_user SET timezone TO 'UTC';
GRANT ALL PRIVILEGES ON DATABASE my_db_name TO my_db_user;
\q
````
To change password
````
ALTER USER user_name WITH PASSWORD 'new_password';
````
Run Migrations and Start the Server
````bash
python manage.py makemigrations
python manage.py migrate
python manage.py runserver
````
---
