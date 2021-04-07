# Augmented-Search tutorial

Building on top of the [previous tutorial](../02-digitall-mariadb), we're going to:

* start an Elasticsearch single-node cluster
* Install augmented-search
* Configure the database connection via a groovy script
* Configure augmented-search to use that connection
* Enable augmented-search on digitall
* Index Digitall

## Instructions

To get started, execute the following commands:

```bash
cd ~
git clone git@github.com:Jahia/provisioning-tutorials.git
cd provisioning-examples/03-augmented-search
docker-compose up
```

While the elasticsearch cluster is starting, you will first see the MariaDB container booting up and Jahia creating the necessary tables and continue with its startup. 

## After startup

At the end of startup (and once indexing is complete), you'll be able to perform your first search using our GraphQL API:

__Query__:
```bash

```

__Response__:
```bash

```

You will also be able to see our demo search UI when visiting Digitall's home page at http://localhost:8080.

## Next

In the next tutorial, we're going to add jExperience and forms to the mix [click here](../04-jexperience-forms/).
