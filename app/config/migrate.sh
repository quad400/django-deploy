#!/bin/bash

# navigate to the docker-created 
# django project root directory
DJANGO_SUPERUSER_EMAIL=${DJANGO_SUPERUSER_EMAIL:-"acer@gmail.com"}
cd /app/


# migrate a docker container as needed
/opt/venv/bin/python manage.py migrate --noinput
# /opt/venv/bin/python manage.py collectstatic
/opt/venv/bin/python manage.py createsuperuser --email $DJANGO_SUPERUSER_EMAIL --noinput || true