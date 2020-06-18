### Copying

Watch this neat [setup video](https://www.loom.com/share/43730f87071445de99bf1582fe8d19eb) or follow the steps below.

1. [Create your own repo from this template](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/creating-a-repository-from-a-template).
2. [Clone your repo](https://help.github.com/en/github/creating-cloning-and-archiving-repositories/cloning-a-repository). ([Better method](https://www.jetbrains.com/help/pycharm/manage-projects-hosted-on-github.html#clone-from-GitHub) for PyCharm users). 
3. Change the projectname directory to your project name.
4. Find and replace "projectname" to your project name.
5. If the version of Python in `runtime.txt` isn't the latest stable, search and replace it for the new one.
6. Create an empty .venv directory.
7. Set up your Pipenv environment.
8. `pipenv update --dev`
9. Set up Codecov and CircleCI through their web apps.
10. Delete these copying instructions from the readme.
11. Commit the files and push.

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
