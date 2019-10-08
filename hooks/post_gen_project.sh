#! /bin/bash
set -e

# Make sure yarn is available
if [ -z "$(which yarn)" ];
then
  printf "Could not find yarn. Please install yarn using:\n\n"
  printf " > npm i -g yarn\n\n"
  exit 1
fi

#Make sure Docker is available
if [ -z "$(which docker)" ];
then
  printf "Could not find Docker. Please install docker.\n"
  printf "See: https://docker.com/"
  exit 1
fi

printf "\n\n=======================\n"
printf "Installing dependencies...\n"
yarn install

printf "\n\n=======================\n"
printf "Building project...\n"
yarn build

printf "\n\n=======================\n"
printf "Building Docker image...\n"
yarn build:image

printf "\n\n=======================\n"
printf "Running tests in docker...\n"
yarn docker:test

printf "\n\n=======================\n"
printf "Template initialization succesful\n"