### Using
1. Fork this project.
2. Clone your project.
3. If there's a new stable Python version: Update it in Pipfile, runtime.txt and config.yml. 
4. Run `pipenv update --dev`
5. Commit.
6. Open a PR to this repo.
7. Change the projectname directory.
8. Find and replace "projectname" for the new name.
9. Delete these instructions from the readme.

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

    pytest --create-db

### Server
#### Development
    
    ./manage.py runserver
    
#### Local Heroku
    
    heroku local
