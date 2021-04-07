# Personal API Tokens tutorial

In this example we're going to:

* start Jahia Enterprise, single node and use a local DerbyDB
* Install Personal API Tokens
* Use a groovy script to create an API token attached to root (see: https://academy.jahia.com/documentation/developer/jahia/8/using-personal-api-tokens)

For simplicity's sake, the groovy script creating the token is located in this repository and accessed directly from the `provisioning.yaml` script.

Note that these examples are provided as a proof of principle, you should never, ever, store credentials on public URLs.

## Instructions

Starting this example is very straight-forward and has no external dependencies (aside from content of this repository), it can be simply started using `docker run`. 

As with most of the examples in this repository, we're going to directly reference the provisioning script by its URL. But it could also be located on the Jahia's filesystem (or mounted volume).

```bash
docker run -e EXECUTE_PROVISIONING_SCRIPT="https://raw.githubusercontent.com/Jahia/provisioning-tutorials/main/01-personal-api-tokens/provisioning.yaml" -p 8080:8080 jahia/jahia-ee:8.0.3.0
```

The command above expose a running Jahia on http://localhost:8080 (watch-out if this port is already used on your machine).

## After startup

You can verify that the token was successefully installed and is usable by running the following curl:
```bash
curl --request POST \
  --url http://localhost:8080/modules/graphql \
  --header 'Content-Type: application/json' \
  --header 'authorization: APIToken kgHNm05iQV61I+GY3X5HVr13i866HAAsyou8G+eGubk=' \
  --data '{"query":"query {\n  currentUser {\n    name\n  }\n}"}'
```

You should receive the following:
```
{"data":{"currentUser":{"name":"root"}}}
```

You can also check the response when sending an invalid token (you will be recognized as "guest")
```bash
curl --request POST \
  --url http://localhost:8080/modules/graphql \
  --header 'Content-Type: application/json' \
  --header 'authorization: APIToken THIS-TOKEN-DOES-NOT-EXIST' \
  --data '{"query":"query {\n  currentUser {\n    name\n  }\n}"}'
```

You should receive the following:
```
{"data":{"currentUser":{"name":"guest"}}}
```

## Next

In the next tutorial, we're going to switch to a MariaDB database and import digitall, [click here](../02-digitall-mariadb/).
