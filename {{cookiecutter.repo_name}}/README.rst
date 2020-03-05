|Github Test|

******************************************************
{{cookiecutter.project_name}}
******************************************************

{{cookiecutter.project_short_description}}

Setup
=====

Before you do anything else, run the following from the root directory of the repo:
::

  # Install dependencies
  pipenv install --dev
  
  # Setup pre-commit and pre-push hooks
  pipenv run pre-commit install -t pre-commit -t pre-push
  


To activate the environment, again from the root directory of the repo:
::

  pipenv shell


Credits
=======

This package was created with Cookiecutter and the `aj-cloete/pipenv-cookiecutter <https://github.com/aj-cloete/pipenv-cookiecutter>`_ project template.

.. |GitHub Test| image:: https://github.com/{{cookiecutter.github_username}}/{{cookiecutter.repo_name}}/workflows/Test/badge.svg
