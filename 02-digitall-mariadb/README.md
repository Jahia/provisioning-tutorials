# Digitall & MariaDB tutorial

Building on top of the [previous tutorial](../01-personal-api-tokens), we're going to:

* start Jahia Enterprise, single node
* start a MariaDB container with an empty database
* Link MariaDB and Jahia, then initialize the database
* Install Digitall

The provisioning script is getting slightly more complex, as we need to install all of the modules needed by Digitall.

We will also need to use docker-compose to spin-up the environment.

## Instructions

To get started, execute the following commands:

```bash
cd ~
git clone git@github.com:Jahia/provisioning-tutorials.git
cd provisioning-tutorials/02-digitall-mariadb
docker-compose up --renew-anon
```

You will first see the MariaDB starting up, Jahia will then create the necessary tables and continue with its startup. 

## After startup

You will have a fully fonctional Digitall site when visiting http://localhost:8080

## What did we learn ?

In this tutorial we switched from `docker run` to `docker-compose`, facilitating the start of multiple containers.

Two elements are worth pointing in this examples:

* The containers are not named and are not using volumes
* Docker-compose is executed with `--renew-anon`

Both elements make sure we're starting from scratch everytime the environment is spun up. You might want to modify this behavior depending of your use case.

We're still using an environment variable to use a [provisioning script](./provisioning.yaml) stored externally, but this time it's declated within the [docker-compose.yml](./docker-compose.yml)

This [provisioning script](./provisioning.yaml) use a few new commands when compared to the previous tutorial:

* `installOrUpgradeBundle` to install a Jahia module or upgrade it if it was already present
* `import` import an archive within Jahia
* `importSite` import a site within Jahia

## Next

In the next tutorial, we're going to add an Elasticsearch single-node cluster, install and configure Augmented Search and enable it on Digitall, [click here](../03-augmented-search/).
