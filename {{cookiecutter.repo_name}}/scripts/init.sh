#!/bin/sh
echo "-> initialise local git repo"
{
    git init
    echo "-> running pipenv install --dev"
    pipenv install --dev

    echo "-> set git to follow tags on push"
    git config push.followTags true

    echo "-> configure git hooks"
    pre-commit install -t pre-commit
    pre-commit install -t pre-push

    echo "-> running preliminary tests"
    pipenv run tests

    echo "Creating ipython kernel for use with Jupyter"
    pipenv run create_ipykernel
} \
&& {
    echo "-> installed developer environment <-"
    echo "#################################################"
    echo "REPO FULLY INITIALISED! You're set up to develop."

    echo "If this is a brand new project, consider running the git-init script:"
    echo "'pipenv run git_setup' to set up the branches and tags"
    echo "#################################################"
}
