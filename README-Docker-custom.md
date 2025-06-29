A custom Docker image can be built locally with:

`docker build -t librechat-custom-rag_api .`

Or by simply running the `docker-build.sh` script.

The custom image (by default, `librechat-custom-rag_api`) can be used with LibreChat, replacing the original `rag_api`, by simply
configuring a proper `docker-compose.override.yml`, within the main LibreChat directory:

```
services:
  rag_api:
    container_name: librechat-rag_api
    #image: ghcr.io/danny-avila/librechat-rag-api-dev:latest
    image: librechat-custom-rag_api
```
