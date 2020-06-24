|Github Test| |Pre-Commit|

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
  pipenv run init


To activate the environment, again from the root directory of the repo:
::

  pipenv shell


Setup
=====

The preferred way to install this repo is via SSH.  This command will install the latest version of `Data Condition`, provided you have `SSH set up on GitHub`_.

.. code-block:: console

    $ pip install git+ssh://git@github.com/{{ cookiecutter.github_username }}/{{ cookiecutter.repo_name }}.git@latest

.. seealso::

	For more detailed installation instructions, see :ref:`installation`

.. _SSH set up on GitHub: https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh

To activate the environment, again from the root directory of the repo:
::

  pipenv shell

Credits
=======

This package was created with Cookiecutter and the `aj-cloete/pipenv-cookiecutter <https://github.com/anmut-consulting/pipenv-cookiecutter>`_ project template.

.. |GitHub Test| image:: https://github.com/{{cookiecutter.github_username}}/{{cookiecutter.repo_name}}/workflows/Test/badge.svg
   :target: https://github.com/{{cookiecutter.github_username}}/{{cookiecutter.repo_name}}/actions
   :alt: github-test
.. |Pre-Commit| image:: https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white
   :target: https://github.com/pre-commit/pre-commit
   :alt: pre-commit
