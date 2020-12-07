|Github Test| |Pre-Commit|

.. image:: images/anmut_logo.png
    :width: 200
    :align: center

******************************************************
{{ cookiecutter.project_name }}
******************************************************

{{ cookiecutter.project_short_description }}

Setup
=====

For detailed installation instructions, see :ref:`installation`.

Source Code
===========

The {{ cookiecutter.project_name }} source code can be found in the `Github repo`_ or in the `Distributions`_ folder within the Anmut Hub - Software Products SharePoint.

For more on installing from source, see :ref:`installation`.

.. _Github repo: https://github.com/anmut-consulting/{{cookiecutter.repo_name}}
.. _Distributions:

Documentation
=============

To read the documentation, please download (or sync) the relevant version folder from the `Documentation`_ folder in the Anmut Hub - Software Products SharePoint.

If you are working from source, you can generate the docs using the following command in terminal::

    $ pipenv run make_docs

Once generated, information can be found in:

- **User Guide**: To read the usage documentation, please see :ref:`usage`.

.. _Documentation:

Contributions
=============

All contributions, bug reports, bug fixes, documentation improvements, enhancements, and ideas are welcome.

A detailed overview on how to contribute can be found in the :ref:`contributing` guide.

Credits
=======

This package was created with `Cookiecutter`_ and the `anmut-consulting/pipenv-cookiecutter`_ project template.

.. _Cookiecutter: https://cookiecutter.readthedocs.io
.. _anmut-consulting/pipenv-cookiecutter: https://github.com/anmut-consulting/pipenv-cookiecutter

.. |GitHub Test| image:: https://github.com/anmut-consulting/vdva/workflows/Test/badge.svg
   :target: https://github.com/anmut-consulting/vdva/actions
   :alt: github-test
.. |Pre-Commit| image:: https://img.shields.io/badge/pre--commit-enabled-brightgreen?logo=pre-commit&logoColor=white
   :target: https://github.com/pre-commit/pre-commit
   :alt: pre-commit
