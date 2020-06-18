### Copying
1. Make and enter the directory where you want your project to live.
2. `git clone https://github.com/travisjungroth/django-base.git .`
3. `rm -rf .git`
4. `git init .`
5. Change the projectname directory to your project name.
5. Find and replace "projectname" to your project name.
6. If the version of Python in `runtime.txt` isn't the latest stable, search and replace it for the new one.
7. Set up your Pipenv environment.
8. `pipenv update --dev`
9. Set up CircleCI and Codecov through their web apps.
10. Delete these copying instructions from the readme.
11. Commit the files.
12. Set up your own remote and push.

### Setup
Install postgres and pipenv if you haven't    
Run `scripts/setup.sh` from the base directory of the project.    
Run `pipenv install --dev`  

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
