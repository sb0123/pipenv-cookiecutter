|Github Test|

******************************************************
{{cookiecutter.project_name}}
******************************************************

Setup
=====

Before you do anything else, run the following from the root directory of the repo:
::

  # Install dependencies
  pipenv install --dev
  
  # Setup pre-commit and pre-push hooks
  pipenv run pre-commit install -t pre-commit
  pipenv run pre-commit install -t pre-push

To activate the environment, again from the root directory of the repo:
::

  pipenv shell


Credits
=======

This package was created with Cookiecutter and the [sourcery-ai/python-best-practices-cookiecutter](https://github.com/sourcery-ai/python-best-practices-cookiecutter) project template.

.. |GitHub Test| image:: https://github.com/{{cookiecutter.github_username}}/{{cookiecutter.repo_name}}/workflows/Test/badge.svg
