<a href="https://www.jahia.com/">
    <img src="https://www.jahia.com/modules/jahiacom-templates/images/jahia-3x.png" alt="Jahia logo" title="Jahia" align="right" height="60" />
</a>

# Provisioning Tutorials

Starting with version 8.0.3.0, Jahia comes with a provisioning API to facilitate the orchestration of Jahia environments. Its main objective is to automate the startup of complex environment beginning with our release artifcats, going all the way to "production", without requiring manual actions nor direct filesystem access to the Jahia environment.

Primariraly aimed at containerized environments (i.e. using Docker) this API is not tied to Docker and operates the same on a local Jahia installation.

## In this repository

Each folder in this repository contains all the necessary elements to start a Jahia environment following different use cases. 

These examples serve as proof-of-principles and are not meant at being used "as-is" for production environment.

| Tutorial | Description |
| --- | --- |
| [00-start-jahia](./00-start-jahia/) | Start Jahia Enterprise with Docker |
| [01-personal-api-tokens](./01-personal-api-tokens/) | Using a local DerbyBD database, installs the `Personal API Tokens` module and creates a token |
| [02-digitall-mariadb](./02-digitall-mariadb) | Using MariaDB as its database, installs Digitall |
| [03-augmented-search](./03-augmented-search) | Adds an Elasticsearch single-node cluster, installs and configures Augmented-Search for Digitall  |
| 04-jexperience | Installs and configures jExperience |
| 05-cluster | Spins-up a 3 nodes Jahia cluster |

__Reminder__: Jahia default root credentials are `root/root1234`.

## Prerequisites

In order to follow these tutorials you will need the Docker Engine installed on your machine. 

These tutorials expose set ports (such as 8080), you will need to make sure these do not conflict with other resources you might have running on your machine.

__Note__: Please ensure that your Docker installation allows allocating up to 4GB of memory to a container. For MacOS users, in Docker go to Preferences>Advanced and set the memory limit to 4GB or more instead of the default 2GB.

## Get started

Ready to get started? If you're new to Jahia with Docker, you should being with the [first tutorial](./00-start-jahia/).

## Documentation

The provisioning API is documented on the Academy [ADD LINK ONCE PUBLISHED]
