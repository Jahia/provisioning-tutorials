# Digitall & MariaDB example

Building on top of the [previous tutorial](../01-personal-api-tokens), we're going to:

* start Jahia Enterprise, single node
* start a MariaDB container (empty)
* Link MariaDB and Jahia, then initialize the database
* Install Digitall

The provisioning script is getting slightly more complex, as we need to install all of the modules needed by Digitall.

We will also need to use docker-compose to spin-up the environment.

## Instructions

To get started, execute the following commands:

```bash
cd ~
git clone git@github.com:Jahia/provisioning-examples.git
cd provisioning-examples/02-digitall-mariadb
docker-compose up
```

You will first see the MariaDB starting up, Jahia will then create the necessary tables and continue with its startup. 

At the end of the startup, digitall will be available on Jahia at http://localhost:8080

## Next

In the next tutorial, we're going to add an Elasticsearch single-node cluster, install and configure Augmented Search and enable it on Digitall, [click here](../03-augmented-search/).
