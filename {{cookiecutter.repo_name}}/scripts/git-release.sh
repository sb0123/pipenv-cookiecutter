{
    echo "\n-> Tagging $1 release\n" &&
        pipenv run bumpversion $1 --verbose &&
        echo "Creating 'latest' tag" &&
        git tag -f latest &&
        echo "\n-> make documentation\n" &&
        pipenv run make_docs &&
        echo "\n-> docs made! use $(open docs/_build/html/index.html) to view"
} &&
    {
        echo "\n-> pushing to remote, including tags\n" &&
            {
                pipenv run git push origin master --tags -f ||
                    pipenv run git push origin master --tags -f --no-verify
            } ||
            {
                git add Pipfile.lock &&
                    git commit -m "Update Pipfile.lock" --no-verify &&
                    {
                        pipenv run git push origin master --tags -f ||
                            pipenv run git push origin master --tags -f --no-verify
                    }
            } &&
            echo "\n######################\nNEW RELEASE SUCCESSFUL\n######################\n"
    } ||
    echo "\n######################\n RELEASE UNSUCCESSFUL \n######################\n"
