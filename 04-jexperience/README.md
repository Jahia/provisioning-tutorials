# jExperience tutorial

Building on top of the [previous tutorial](../03-augmented-search), we're going to:

* Install jCustomer (Apache Unomi)
* Configure jCustomer with Jahia and Elasticsearch

## Instructions

To get started, execute the following commands:

```bash
cd ~
git clone https://github.com/Jahia/provisioning-tutorials.git
cd provisioning-tutorials/04-jexperience
```

This tutorial is a bit more cumbursome when compared to the previous ones as it requires you to obtain a [GeoLite license key from maxmind]( https://dev.maxmind.com/geoip/geoip2/geolite2/). This is used by Unomi to associate IP addresses with their geolocation.

Once done, update the variable `JCUSTOMER_MAXMIND_GEOIP2_CITY_DATABASE_URL` , by replacing `CHANGEME` with the license key, in the `.env` file fetched earlier.

```bash
JCUSTOMER_MAXMIND_GEOIP2_CITY_DATABASE_URL=https://download.maxmind.com/app/geoip_download?edition_id=GeoLite2-City&license_key=CHANGEME&suffix=tar.gz
JAHIA_IMAGE=jahia/jahia-ee:8.1.0.0
UNOMI_IMAGE=jahia/jcustomer:1.6.0
ELASTICSEARCH_IMAGE=docker.elastic.co/elasticsearch/elasticsearch:7.17.1
MARIADB_IMAGE=library/mariadb:10-focal
```

You might have noticed that we're introducing another layer of flexibility with the `.env` file. You can use it to easily modify the docker images (and their versions) used for the environment. 

We can now start the environment:
```bash
docker-compose up --renew-anon
```

## After startup

At the end of startup (give it a minute or two), open a browser to Digitall's home page at http://localhost:8080.

You can also validate that the connection between jExperience and Unomi is operating operational.

<img width="800" alt="jExperience Settings" src="https://user-images.githubusercontent.com/5667028/113959331-a8827800-97f0-11eb-815c-0cff08874484.png">


## What did we learn ?

We added one level of complexity by adding another container (Unomi) requiring a specific configuration to be stored in Jahia.

This [provisioning script](./provisioning.yaml) uses one new commands when compared to the previous tutorial:

* `editConfiguration` Create (or update) a configuration file in jahia `karaf/etc`.

## That's it !

These tutorials should have provided you with a starting point for better understanding how to use Jahia's provisioning API.

[Back to index](https://github.com/Jahia/provisioning-tutorials/)
