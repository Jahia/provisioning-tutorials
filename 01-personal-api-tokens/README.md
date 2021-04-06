# Personal API Tokens example

In this example we're going to:

* start Jahia Enterprise, single node and use a local DerbyDB
* Install Personal API Tokens
* Use a groovy script to create an API token attached to root (see: https://academy.jahia.com/documentation/developer/jahia/8/using-personal-api-tokens)

For simplicity's sake, the groovy script creating the token is located in this repository and accessed directly from the `provisioning.yaml` script.

Note that these examples are provided as a proof of principle, you should never, ever, store credentials on public URLs.

## Instructions

Starting this example is very straight-forward and has no external dependencies (aside from content of this repository), it can be simply executed using `docker run`

```bash
docker run -e EXECUTE_PROVISIONING_SCRIPT="https://raw.githubusercontent.com/Jahia/provisioning-examples/main/01-personal-api-tokens/provisioning.yaml" -p 8080:8080 jahia/jahia-ee:8.0.3.0
```

The command above expose a running Jahia on http://localhost:8080 (watch-out if this port is already used on your machine).

You can verify that the token was successefully installed by running the following curl:

