#!/bin/sh



HUGO_DESTINATION="${HUGO_DESTINATION:=/output}"
HUGO_THEME="${HUGO_THEME:=techdoc}"
REPO_BRANCH="${REPO_BRANCH:=main}"
REPO_PATH="${REPO_PATH:=/}"
HUGO_THEME_URL="${HUGO_THEME_URL:=https://github.com/thingsym/hugo-theme-techdoc}"
echo "HUGO_THEME:" $HUGO_THEME
echo "ARGS" $@

HUGO=/usr/local/sbin/hugo
echo "Hugo path: $HUGO"

echo "Cloning from" $REPO_NAME "branch " $REPO_BRANCH " to /site/"

git clone https://$REPO_TOKEN@github.com/$REPO_NAME.git --branch $REPO_BRANCH /site/

echo "Cloning theme from $HUGO_THEME"
git clone $HUGO_THEME_URL /site/$REPO_PATH/themes/$HUGO_THEME

#$HUGO server --watch=true --source="/site/$REPO_PATH" --themesDir="/site/$REPO_PATH/themes/" --theme="$HUGO_THEME" --destination="$HUGO_DESTINATION" --bind="0.0.0.0" "$@" || exit 1
$HUGO --source="/site/$REPO_PATH" --themesDir="/site/$REPO_PATH/themes/" --theme="$HUGO_THEME" --destination="$HUGO_DESTINATION" -v "$@" || exit 1
