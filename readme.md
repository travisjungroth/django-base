[![CircleCI](https://circleci.com/gh/travisjungroth/django-base.svg?style=svg)](https://circleci.com/gh/travisjungroth/django-base)
[![Codacy Badge](https://api.codacy.com/project/badge/Grade/fb61ec135c25490ab0caa3c3b6fd25e0)](https://www.codacy.com/manual/travisjungroth/django-base?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=travisjungroth/django-base&amp;utm_campaign=Badge_Grade)
[![Codacy Badge](https://api.codacy.com/project/badge/Coverage/fb61ec135c25490ab0caa3c3b6fd25e0)](https://www.codacy.com/manual/travisjungroth/django-base?utm_source=github.com&utm_medium=referral&utm_content=travisjungroth/django-base&utm_campaign=Badge_Coverage)
### Using
1.  Update the Python version in _this project_
2.  Run pipenv update --dev
3.  Pull in changes
4.  Clone
5.  Change the name in app.json
6.  Change the badges
7.  Change the project directory (if you want)
8.  Delete these instructions from the readme
9.  Make a PR for any improvements

### Setup
Install postgres and pipenv if you haven't
Run scripts/setup.sh from the base directory of the project.
Run pipenv install --dev  

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
