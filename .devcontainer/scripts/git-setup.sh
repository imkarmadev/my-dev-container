#!/bin/bash

ENV_DIRECTORY=".devcontainer/.env"

if [ ! -f "$ENV_DIRECTORY" ]; then
  echo ".env file not found"
  exit 1
fi

source "$ENV_DIRECTORY"

echo "Setup Git User ..."

git config --global user.email "$GIT_EMAIL"
git config --global user.name "$GIT_USERNAME"

echo "Setup SSH Key ..."

cp -R ".devcontainer/.ssh" "/root/.ssh"
chmod 0400 "/root/.ssh/id_rsa"