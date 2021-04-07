<a href="https://www.jahia.com/">
    <img src="https://www.jahia.com/modules/jahiacom-templates/images/jahia-3x.png" alt="Jahia logo" title="Jahia" align="right" height="60" />
</a>

# Provisioning Tutorials

Starting with version 8.0.3.0, Jahia comes with a provisioning API to facilitate the orchestration of Jahia environments. Its main objective is to automate the startup of complex environment beginning with our release artifcats, going all the way to "production", without requiring manual actions nor direct filesystem access to the Jahia environment.

Primariraly aimed at containerized environments (i.e. using Docker) this API is not tied to Docker and operate in the same fashion on a local Jahia installation.

## In this repository

Each folder in this repository contains all the necessary elements to start a Jahia environment following different use cases. 

These examples serves as proof-of-principles and are not meant at being used "as-is" for production environment. You will find useful piece of information that can later be adapted to your use case.

| Tutorial | Description |
| --- | --- |
| [01-personal-api-tokens](./01-personal-api-tokens/) | Using a local DerbyBD database, installs the `Personal API Tokens` module and creates a token |
| 02-digitall-mariadb | Using MariaDB as its database, installs Digitall |
| 03-augmented-search | Adds an Elasticsearch single-node cluster, installs and configures Augmented-Search for Digitall  |
| 04-jexperience | Installs and configures jExperience |
| 05-cluster | Spins-up a 3 nodes Jahia cluster |


## Documentation

The provisioning API is documented on the Academy [ADD LINK ONCE PUBLISHED]
