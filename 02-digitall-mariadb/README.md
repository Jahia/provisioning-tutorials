# Digitall & MariaDB example

In this example we're going to:

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
git clone https://github.com/Jahia/provisioning-examples.git
cd provisioning-examples/02-digitall-mariadb
docker-compose up
```

