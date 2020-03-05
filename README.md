# Pipenv Python Cookiecutter

Best practices [cookiecutter](https://github.com/audreyr/cookiecutter) template as described in this [blogpost](https://sourcery.ai/blog/python-best-practices/).

## Features
- Testing with [pytest](https://docs.pytest.org/en/latest/)
- Formatting with [black](https://github.com/psf/black)
- Import sorting with [isort](https://github.com/timothycrosley/isort)
- Static typing with [mypy](http://mypy-lang.org/)
- Linting with [flake8](http://flake8.pycqa.org/en/latest/)
- Git hooks that run all the above with [pre-commit](https://pre-commit.com/)
- Deployment ready with [Docker](https://docker.com/)
- Continuous Integration with [GitHub Actions](https://github.com/features/actions)

## Quickstart
Before you start, make sure you've covered [the basics](./the_basics.md).

Install **pipx**
```
python3 -m pip install pipx
python3 -m pipx ensurepath
exit
```
> *now close your terminal window and open a new one before continuing*

Install **pipenv** using pipx
```
pipx install pipenv
```
Install **cookiecutter** using pipx
```
pipx install cookiecutter
```
Use **cookiecutter to create project** from this template.  
*The folder will be created in the working directory (`pwd`) so make sure you `cd` to where you want to be.*
> I use `~/dev/` for my development projects.

Running the following command will ask you a series of questions, including the name of the project and your github username, so make sure you have those handy.
```
pipx run cookiecutter gh:aj-cloete/pipenv-cookiecutter
```

Enter project directory
```
cd <repo_name>
```

Initialise git repo
```
git init
```

Install dependencies
```
pipenv install --dev
```

Setup pre-commit and pre-push hooks
```
pipenv run pre-commit install -t pre-commit -t pre-push
```

Remeber to actually activate the environment when you want to interact with the code! From the root folder of the repo:
```
pipenv shell
```

## Link to Remote repo
Now that you have the repo set up locally, you will want to push to some remote of your choice (Github, Gitlab, etc.)
Follow these steps to get that done:
1.  Create a new repository on your online platform.
> To avoid errors, do not initialize the new repository with README, license, or gitignore files. You can add these files after your project has been pushed to GitHub.
2.  Open Terminal and change the current working directory to your local project.
3.  Initialize the local directory as a Git repository.
```
git init
```
4.  Add the files in your new local repository. This stages them for the first commit.
```
git add .
# Adds the files in the local repository and stages them for commit. 
# To unstage a file, use 'git reset HEAD YOUR-FILE'.
```
5.  Commit the files that you've staged in your local repository.
```
git commit -m "First commit"
# Commits the tracked changes and prepares them to be pushed to a remote repository. 
# To remove this commit and modify the file, use 'git reset --soft HEAD~1' and commit and add the file again.
```
6.  In Terminal, add the URL for the remote repository where your local repository will be pushed.
```
git remote add origin <remote repository URL>
# Sets the new remote
git remote -v
# Verifies the new remote URL
```
7.  Push the changes in your local repository to GitHub.
```
git push -u origin master
# Pushes the changes in your local repository up to the remote repository you specified as the origin
```

**You're all set! Happy coding!**
