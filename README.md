# 🛠️ Django + Angular + PostgreSQL Backend Setup Guide

This project sets up a backend using **Django** with **PostgreSQL** and optionally includes **Angular** for the frontend. This guide is fully **manual** using terminal commands—ideal for learning or keeping things transparent.

---

## 📦 Tech Stack

- Python 3.10
- Django
- PostgreSQL
- Angular (Optional)
- Virtual Environment (`venv`)
- Git for version control

---

## Backend Setup Instructions (Django + PostgreSQL)

### Create Project Directory

```bash
$ mkdir my_project
$ cd my_project
```
Install Django globally 

````bash
$ pip install django
$ django-admin startproject backend
$ cd backend
````
### Set Up Virtual Environment
````bash
mkdir venv_3.10
cd venv_3.10
python3 -m venv .
````
Set Up Python Interpreter
```bash
If using PyCharm:

Go to: Settings > Project > Python Interpreter

Click Add Interpreter → Local Interpreter

Browse and select: venv_3.10/bin/python3.10
````
Activate the Virtual Environment
````bash
source bin/activate
````
pip install -r requirements.txt
````requirements.txt
amqp
asgiref
async-timeout
azure-storage-queue
billiard
black
boto3==1.35.17
botocore==1.35.17
cachetools
celery
certifi
cffi
cfgv
charset-normalizer
click
click-didyoumean
click-plugins
click-repl
cloudfront-signed-cookies
coreapi
coreschema
cryptography
Deprecated
distlib
Django==4.2.16
django-celery-beat
django-cors-headers
django-debug-toolbar
django-extensions
django-health-check
django-modeladmin-reorder
django-rest-framework
django-rest-swagger
django-spa
django-sslserver
django-timezone-field
djangorestframework
djangorestframework-simplejwt
drf-yasg
Faker
filelock
flower
google-api-core
google-api-python-client
google-auth
google-auth-httplib2
google-auth-oauthlib
googleapis-common-protos
greenlet
gunicorn
httplib2
humanize
identify
idna
inflection
isort
itypes
Jinja2
jmespath
kombu
MarkupSafe
mccabe
mypy-extensions
natsort
newrelic
nodeenv
numpy
oauthlib
openapi-codec
ordered-set
packaging
pathspec
phonenumbers
pillow
platformdirs
pre-commit
progress
prometheus-client
prompt-toolkit
proto-plus
protobuf
psutil
psycopg2-binary
pyasn1
pyasn1-modules
pycodestyle
pycparser
pycryptodome
pyflakes
PyJWT
pyparsing
python-crontab
python-dateutil
python-decouple
pytz
PyYAML
redis
requests
requests-oauthlib
requests-toolbelt
retrying
rsa
ruamel.yaml
ruamel.yaml.clib
s3transfer
simplejson
six
slack-sdk
SQLAlchemy
sqlparse
stripe
tomli
tornado
typing-extensions
tzdata
uritemplate
urllib3
vine
virtualenv
wcwidth
whitenoise
wrapt
xkcdpass
````
---
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
Run Migrations and Start the Server
````bash
python manage.py makemigrations
python manage.py migrate
python manage.py runserver
````
---
