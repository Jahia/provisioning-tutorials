# Start Jahia tutorial

In this example we're going to start Jahia Enterprise.

The main purpose of this very first tutorial is to ensure your Docker environment is setup properly.

## Instructions

In a terminal, run the following command:

```bash
docker run -p 8080:8080 jahia/jahia-ee:8.1.0.0
```

This will start a Jahia Enterprise container, with the default 30 days license. 

This Jahia instance will be available at http://localhost:8080

## What did we learn ?

If you are new to Docker you learnt how to manually start a container, if you were already familiar with Docker you probably noticed that Jahia can be started very easily.

## Next

In the next tutorial, we're going to automatically create a Personal API Token at Jahia startup and use it in a GraphQL API call, [click here](../01-personal-api-tokens/).
