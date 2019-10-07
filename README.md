# Portal
The MFM Portal covers device management and data processing

# Development
This project uses [Docker](https://docker.com/) to remove problems surrounding development environments. Docker can run services temporarily during development without cluttering your device.

The project development also happens in a container. All binary requirements are installed in a Docker image. Then your project folder is mounted inside a container.

Use your favorite editor on the source code and run everything in a container.

## Preparing Docker environment
Before running anything in Docker you have to create an image. This image has to reflect your UID and GID, otherwise the Docker container could mess up your project permissions.

To build the Docker image replicating your UID/GID run:
```
yarn build:image
```
This is a script for:
```
docker build .
  -t pollex/portal:local
  --build-arg UID=$(id -u)
  --build-arg GID=$(id -g)
```

## Running scripts
The package file provides you with a set of helper scripts. Note that these scripts run outside the docker environment, see *Running and testing* below.

 - `yarn build` | **Transpiles the TypeScript src to javascript**
 - `yarn build:image` | **Rebuild the Docker image with your user permissions**
 - `yarn docker <command>` | **Run \<command\> inside a disposable container**
 - `yarn start:dev` | **Run the project with auto-reload**
 - `yarn test` | **Performs unit tests and code-coverage**

### Running and testing
 You will most likely want to run start:dev and test in Docker through the following scripts. These will publish ports to the host machine for debugging and interaction.

 - `yarn docker:start:dev` | **Also publishes debug port and web port (9229 and 3000)**
 - `yarn docker:test` | **Also publishes debug port on 9230**

 `yarn docker:start:dev` Published the debug port to 9230 so it does not conflict with a running development instance.