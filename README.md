 # AI Toolbox

Kickstarts a locally hosted AI toolbox with n8n , postgres with the vector plugin, and redis

### What’s included

✅ [**n8n**](https://n8n.io/) - Low-code platform with over 400
integrations and advanced AI components. This is a custom n8n image with puppeteer built in.

✅ [**Postgres**](https://www.postgresql.org/) - Defacto DB

✅ [**Redis**](https://redis.io) - Key val cache DB

## Installation

1. Make a copy of `.env.example` and rename it to `.env` in the root directory of the project
2. Set the required environment variables:

> [!IMPORTANT]
> Make sure to generate secure random values for all secrets. Never use the example values in production.

3. Access locally on http://localhost:5678 , or put behind a secure reverse proxy (like Caddy)

---

## start the containers
```bash
sh start.sh
```

## upgrade containers
```bash
sh rebuild.sh
```

## Stop all containers
```bash
sh stop.sh
```

## Accessing the Postgres and Redis containers from n8n.
Use the hostnames 'postgres' and 'redis'.  They are in the same docker network (aitoolbox) as the n8n container.

## n8n templates

For AI workflow ideas, visit the [**official n8n AI template
gallery**](https://n8n.io/workflows/?categories=AI). From each workflow,
select the **Use workflow** button to automatically import the workflow into
your local n8n instance.

### Accessing local files

The self-hosted AI starter kit will create a shared folder (by default,
located in the same directory, called 'shared', but can be specified in
the .env file ) which is mounted to the n8n container and
allows n8n to access files on disk. This folder within the n8n container is
located at `.n8n-files` -- this is the path you’ll need to use in nodes that
interact with the local filesystem.

**Nodes that interact with the local filesystem**

- [Read/Write Files from Disk](https://docs.n8n.io/integrations/builtin/core-nodes/n8n-nodes-base.filesreadwrite/)
- [Local File Trigger](https://docs.n8n.io/integrations/builtin/core-nodes/n8n-nodes-base.localfiletrigger/) (disabled by default)

- [Execute Command](https://docs.n8n.io/integrations/builtin/core-nodes/n8n-nodes-base.executecommand/) (disabled by default)
