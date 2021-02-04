#!/usr/bin/env bash

REPO_NAME=BrianRagazzi/lablinks
REPO_BRANCH=lab
REPO_TOKEN=token
THEME=techdoc



git clone https://$REPO_TOKEN@github.com/$REPO_NAME.git --branch $REPO_BRANCH /site/

# install hugo theme with npm
npm install ./site/themes/$THEME && \
# generate site
hugo server -t $THEME
