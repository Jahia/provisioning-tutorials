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

At the end of the startup, digitall will be available on Jahia at http://localhost:8080

