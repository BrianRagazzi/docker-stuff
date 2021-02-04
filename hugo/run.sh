#!/bin/sh



HUGO_DESTINATION="${HUGO_DESTINATION:=/output}"
HUGO_THEME="${HUGO_THEME:=techdoc}"
REPO_BRANCH="${REPO_BRANCH:=master}"
echo "HUGO_THEME:" $HUGO_THEME
echo "ARGS" $@

HUGO=/usr/local/sbin/hugo
echo "Hugo path: $HUGO"

echo "Cloning from" $REPO_NAME "branch " $REPO_BRANCH " to /site/"

git clone https://$REPO_TOKEN@github.com/$REPO_NAME.git --branch $REPO_BRANCH /site/

# $HUGO server --watch=true --source="/site" --theme="$HUGO_THEME" --destination="$HUGO_DESTINATION" --baseURL="$HUGO_BASEURL" --bind="0.0.0.0" "$@" || exit 1
$HUGO server --watch=true --source="/site" --theme="$HUGO_THEME" --destination="$HUGO_DESTINATION" --bind="0.0.0.0" "$@" || exit 1
