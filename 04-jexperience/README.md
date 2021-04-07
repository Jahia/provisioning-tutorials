# jExeperience tutorial

Building on top of the [previous tutorial](../03-augmented-search), we're going to:

* Install jCustomer (Apache Unomi)
* Configure jCustomer with Jahia and Elasticsearch

## Instructions

To get started, execute the following commands:

```bash
cd ~
git clone git@github.com:Jahia/provisioning-tutorials.git
cd provisioning-examples/04-jexperience
```

This tutorial is a bit more combursome when compared to the previous ones as it requires you to obtain a [GeoLite license key from maxmind]( https://dev.maxmind.com/geoip/geoip2/geolite2/). This is used by Unomi to associate IP addresses with their geolocation.

Once done, update the variable `MAXMIND_KEY` in the `.env` file fetched earlier.


## After startup

At the end of startup (give it a minute or two), open a browser to Digitall's home page at http://localhost:8080.


## Next

In the next tutorial, we're going to add jExperience and forms to the mix [click here](../04-jexperience-forms/).
