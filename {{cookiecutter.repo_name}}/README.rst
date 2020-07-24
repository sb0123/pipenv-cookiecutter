|Github Test| |Pre-Commit|

******************************************************
{{ cookiecutter.project_name }}
******************************************************

{{ cookiecutter.project_short_description }}

Setup
=====

Using pip
---------

The preferred way to install this repo is via SSH.  This command will install the latest version of {{ cookiecutter.project_name }}, provided you have `SSH set up on GitHub`_.

.. code-block:: console

    $ pip install git+ssh://git@github.com/anmut-consulting/{{ cookiecutter.repo_name }}.git@latest

.. seealso::

	For more detailed installation instructions, see :ref:`installation`

.. _SSH set up on GitHub: https://help.github.com/en/github/authenticating-to-github/connecting-to-github-with-ssh

To activate the environment (assuming you are using one),
again from the root directory of the repo::

    $ source env/bin/activate

And to deactivate the environment::

    $ deactivate

Using pipenv
------------
if you're using pipenv to manage your environment, you need to add a #egg=display-name to the end of the install instruction.  i.e::

    $ pipenv install git+ssh://git@github.com/anmut-consulting/{{ cookiecutter.repo_name }}.git@latest#egg={{ cookiecutter.repo_name }}

To activate the environment, the command is::

    $ pipenv shell

You should see ({{ cookiecutter.repo_name }}) at the start of the prompt now.  This indicates you are in the activated environment.  If you don't see it - something has gone wrong.

To deactivate the environment again, simply run::

    $ exit

Credits
=======

This package was created with `Cookiecutter <https://cookiecutter.readthedocs.io>`_ and the `anmut-consulting/pipenv-cookiecutter <https://github.com/anmut-consulting/pipenv-cookiecutter>`_ project template.

.. |GitHub Test| image:: https://github.com/anmut-consulting/{{cookiecutter.repo_name}}/workflows/Test/badge.svg
   :target: https://github.com/anmut-consulting/{{cookiecutter.repo_name}}/actions
   :alt: github-test
.. |Pre-Commit| image:: https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white
   :target: https://github.com/pre-commit/pre-commit
   :alt: pre-commit
