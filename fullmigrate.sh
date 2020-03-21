#!/bin/bash
set -e
./manage.py makemigrations
pytest --create-db
./manage.py migrate
