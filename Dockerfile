# Build from the Node Latest Stable docker image
FROM keymetrics/pm2:10-slim

# Prepare user with uid and gid
ARG UID=1000
ARG GID=1000
RUN groupmod -g $GID node
RUN usermod -u $UID node

# Expose ports
EXPOSE 3000

WORKDIR /srv/app

# Copy project to container
COPY dist dist/
COPY package.json .
COPY yarn.lock .
COPY pm2.json .


# Install dependencies
RUN ["yarn", "install", "--production"]

# Fix permissions
RUN ["chown", "node:node", "-R", "."]

USER node

CMD [ "pm2-runtime", "start", "pm2.json" ]