#!/bin/bash


NAME="Chad Homan"
EMAIL=choman@gmail.com

git config --global core.editor vim
git config --local user.name "$NAME"
git config --local user.email "$EMAIL"
git config --local credential.helper cache

