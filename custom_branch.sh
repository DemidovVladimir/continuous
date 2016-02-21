#!/bin/bash
echo "On branch '$TRAVIS_BRANCH'."

if [ "$TRAVIS_BRANCH" == "master" ]; then
  echo "Triggering Mup deployment..."
  mupx deploy
else
  echo "Not deploying. Use 'prod' branch to deploy."
fi