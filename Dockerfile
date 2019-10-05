# Build from the Node Latest Stable docker image
FROM node:10

# Expose ports
EXPOSE 3000

WORKDIR /home/node/app

# Copy over project folder (excluding .dockerignore contents)
COPY . .

# Install dependencies
RUN ["yarn", "install", "--prod"]

# Default entrypoint is "yarn" with paremeter "start:prod"
# This allows a user to run package.json scripts through when running the container.
# Ex. `docker run portal test` would run `yarn test`
# Ex. `docker run portal` would run `yarn start:prod`
ENTRYPOINT ["yarn"]
CMD ["start:prod"]

USER node