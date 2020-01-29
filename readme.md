[![CircleCI](https://circleci.com/gh/travisjungroth/django-base.svg?style=svg)](https://circleci.com/gh/travisjungroth/django-base)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/fb61ec135c25490ab0caa3c3b6fd25e0)](https://www.codacy.com/manual/travisjungroth/django-base?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=travisjungroth/django-base&amp;utm_campaign=Badge_Grade)
[![Codacy Badge](https://api.codacy.com/project/badge/Coverage/fb61ec135c25490ab0caa3c3b6fd25e0)](https://www.codacy.com/manual/travisjungroth/django-base?utm_source=github.com&utm_medium=referral&utm_content=travisjungroth/django-base&utm_campaign=Badge_Coverage)
### Using
1.  Change the name in app.json
2.  Change the badges
3.  Change the project directory (if you want)
4.  Delete these instructions from the readme
5.  Make a PR for any changes you had to make

### Setup
1.  Install postgres
2.  Create a new postgres database and user (must be superuser)
3.  Set up the .env file (refer to app.json)
4.  Use pipenv

### Tests
#### Running    
    pytest
    
#### With coverage

    pytest --cov=.
    
#### Recreate the database (runs migrations)

    pytest --create-db test_basics.py::test_database

### Server
#### Development
    
    ./manage.py runserver
    
#### Local Heroku
    
    heroku local
