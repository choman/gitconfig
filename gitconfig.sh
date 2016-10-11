#!/bin/bash


NAME="Chad Homan"
EMAIL=choman@gmail.com

git config --global core.editor vi
git config --global push.default simple
git config --local user.name "$NAME"
git config --local user.email "$EMAIL"
git config --local credential.helper cache

git config -l | grep remote.origin.url | grep "choman@git" > /dev/null

if [ $? -eq 1 ]; then
    echo "Updating remote.origin.url"
    ret=$(git config -l | grep remote.origin.url | cut -d= -f2)
    ret=${ret/github/choman@github}
    git config --local  remote.origin.url $ret
    git config -l

fi

