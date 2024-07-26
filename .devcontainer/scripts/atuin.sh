#!/bin/bash

ENV_DIRECTORY=".devcontainer/.env"

if [ ! -f "$ENV_DIRECTORY" ]; then
  echo ".env file not found"
  exit 1
fi

source "$ENV_DIRECTORY"

curl https://setup.atuin.sh -sSf | bash -s -- -y

echo 'eval "$(atuin init zsh)"' >> $HOME/.zshrc

source $HOME/.zshrc

echo "Login to Atuin history as $ATUIN_LOGIN ..."

atuin login -u "$ATUIN_LOGIN" -p "$ATUIN_PASSWORD" -k "$ATUIN_KEY"

atuin sync -f