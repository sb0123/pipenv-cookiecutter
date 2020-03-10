echo "-> running tests"
pipenv run commit_test
pipenv run push_test

echo "-> tests passed! Tagging $1 release"
pipenv run bumpversion $1

echo "-> make documentation"
pipenv run make_docs

echo "-> pushing to remote, including tags"
pipenv run git push origin master

echo "######################"
echo "NEW RELEASE SUCCESSFUL"
echo "######################"
