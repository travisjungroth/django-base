### Copying
1. [Create your own repo from this template](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template).
2. [Clone your repo](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository). ([Better method](https://www.jetbrains.com/help/pycharm/manage-projects-hosted-on-github.html#clone-from-GitHub) for PyCharm users). 
3. Change the projectname directory to your project name.
4. Find and replace "projectname" to your project name.
5. If the version of Python in `runtime.txt` isn't the latest stable, search and replace it for the new one.
6. Set up your Pipenv environment if it isn't already.
7. `pipenv update --dev`
8. Set up CircleCI and Codecov through their web apps.
9. Delete these copying instructions from the readme.
10. Commit the files and push.

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
