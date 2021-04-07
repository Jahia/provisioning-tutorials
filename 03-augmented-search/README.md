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
cd provisioning-tutorials/03-augmented-search
docker-compose up --renew-anon
```

While the elasticsearch cluster is starting, you will first see the MariaDB container booting up and Jahia creating the necessary tables and continue with its startup. 

## After startup

At the end of startup (give it a minute or two), open a browser to Digitall's home page at http://localhost:8080.

<img width="800" alt="Augmented Search and Digitall" src="https://user-images.githubusercontent.com/5667028/113905349-0dae7d00-97a1-11eb-9121-f68379f41bd1.png">

### Fiddling with GraphQL API 

You can also play with our GraphQL API: 

__Query__: As an authenticated user (root), fetch 2 hits across all documents (no search terms) in the __EDIT__ workspace
```bash
curl --request POST \
  --url http://localhost:8080/modules/graphql \
  --header 'Content-Type: application/json' \
  --header 'authorization: APIToken kgHNm05iQV61I+GY3X5HVr13i866HAAsyou8G+eGubk=' \
  --data '{"query":"query {\n  search(q: \"\", workspace: EDIT) {\n    results(size: 2) {\n      hits {\n        displayableName\n      }\n    }\n  }\n}"}'
```

__Response__:
```bash
{"data":{"search":{"results":{"hits":[{"displayableName":"News Entry"},{"displayableName":"History"}]}}}}
```

You might notice that we searched in the EDIT workspace, which is only accessible to an authenticated user, look at what happens if you run the same query without providing a token:

__Query__: As guest, fetch 2 hits across all documents (no search terms) in the __EDIT__ workspace
```bash
curl --request POST \
  --url http://localhost:8080/modules/graphql \
  --header 'Content-Type: application/json' \
  --data '{"query":"query {\n  search(q: \"\", workspace: EDIT) {\n    results(size: 2) {\n      hits {\n        displayableName\n      }\n    }\n  }\n}"}'
```

__Response__:
```bash
{"data":{"search":{"results":{"hits":[]}}}}
```

Now try changing the workspace to LIVE, which should work fine as guest.

__Query__: As guest, fetch 2 hits across all documents (no search terms) in the __LIVE__ workspace
```bash
curl --request POST \
  --url http://localhost:8080/modules/graphql \
  --header 'Content-Type: application/json' \
  --data '{"query":"query {\n  search(q: \"\", workspace: LIVE) {\n    results(size: 2) {\n      hits {\n        displayableName\n      }\n    }\n  }\n}"}'
```

__Response__:
```bash
{"data":{"search":{"results":{"hits":[{"displayableName":"Press Releases Entry"},{"displayableName":"Events"}]}}}}
```

__PS__: Since we're not searching on a particular search term, the exact result order between the two workspaces might differ (as they do in the example above).

## Next

In the next tutorial, we're going to add jExperience and forms to the mix [click here](../04-jexperience/).
