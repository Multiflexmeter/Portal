Portal Service Cookiecutter Template
----
This is a [Cookiecutter](https://cookiecutter.readthedocs.io/en/latest/) template. Use this template to quickly set-up a new service repository with docker, typescript, testing and coverage support.

# Installing cookiecutter
See [the Cookiecutter documentation](https://cookiecutter.readthedocs.io/en/latest/installation.html) for a full installation guide.

On Ubuntu use:

```
sudo apt install cookiecutter
```

# Using this template
To use this template simply execute the following command with Cookiecutter installed.

```
cookiecutter https://github.com/Multiflexmeter/portal-service-template
```

This command will prompt a few questions and then create the project in a folder named after your service. (1st question)

# Template features
This template creates a Docker based Node.JS project with Typescript support. Below are a few key features:

 - Typescript support
 - Typescript ESLint w/ auto-format
 - Mocha & Chai Unit-Testing
 - NYC / Istanbul code-coverage
 - Gitlab CI/CD support (missing k8s deployment)
 - Dockerized project
 - Develop in container

# Template contents
The template contains the following files:

```
<service name>
├────── Dockerfile
├────── LICENSE
├────── package.json
├────── pm2.json
├────── README.md
├────── src
│   └────── app.ts
├────── tests
│   └────── example.test.ts
├────── tsconfig.json
└────── yarn.lock
```

