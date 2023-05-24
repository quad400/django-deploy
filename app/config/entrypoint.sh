#!/bin/bash

# set the running gunicorn port 
# based on a Environment variable
APP_PORT=${PORT:-8000}

# go to the docker-created app directory
# where the code is copied
cd /app/

# run the gunicorn server on the cfehome.wsgi:application
/opt/venv/bin/gunicorn app.wsgi:application --bind "0.0.0.0:$APP_PORT"