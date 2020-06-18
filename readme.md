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
