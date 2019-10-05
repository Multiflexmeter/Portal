# Build from the Node Latest Stable docker image
FROM keymetrics/pm2:10-alpine

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

CMD [ "pm2-runtime", "start", "pm2.json" ]