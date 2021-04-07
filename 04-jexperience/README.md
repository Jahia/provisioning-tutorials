# Augmented-Search tutorial

Building on top of the [previous tutorial](../03-augmented-search), we're going to:

* Install jCustomer (Apache Unomi)
* Configure jCustomer with Jahia and Elasticsearch

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

At the end of startup (give it a minute or two), open a browser to Digitall's home page at http://localhost:8080.


## Next

In the next tutorial, we're going to add jExperience and forms to the mix [click here](../04-jexperience-forms/).
