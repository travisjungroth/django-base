[![CircleCI](https://circleci.com/gh/travisjungroth/django-base.svg?style=svg)](https://circleci.com/gh/travisjungroth/django-base)

### Using
1.  Update the Python version in _this project_
2.  Run pipenv lock
3.  Pull in changes
4.  Clone
5.  Change the name in app.json
6.  Change the badges

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