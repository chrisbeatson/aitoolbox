 # AI Toolbox

Kickstarts a locally hosted AI toolbox with n8n (with a built in puppeteer node), postgres, qdrant, neo4j, and redis

### What’s included

✅ [**n8n**](https://n8n.io/) - Low-code platform with over 400
integrations and advanced AI components. This is a custom n8n image with puppeteer built in.

✅ [**Neo4j**](https://neo4j.com/) - Knowledge graph engine that powers tools like GraphRAG, LightRAG, and Graphiti 

✅ [**Postgres**](https://www.postgresql.org/) - Defacto DB

✅ [**Qdrant**](https://qdrant.tech/) - Fast Vector DB for RAG workflows

✅ [**Redis**](https://redis.io) - Key val cache DB

## Installation

1. Make a copy of `.env.example` and rename it to `.env` in the root directory of the project
2. Set the required environment variables:

> [!IMPORTANT]
> Make sure to generate secure random values for all secrets. Never use the example values in production.

---

## start the containers
```bash
sh start.sh
```

## upgrade containers
```bash
sh rebuild.sh
```

# Stop all containers
```bash
sh stop.sh
```

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
located at `/data/shared` -- this is the path you’ll need to use in nodes that
interact with the local filesystem.

**Nodes that interact with the local filesystem**

- [Read/Write Files from Disk](https://docs.n8n.io/integrations/builtin/core-nodes/n8n-nodes-base.filesreadwrite/)
- [Local File Trigger](https://docs.n8n.io/integrations/builtin/core-nodes/n8n-nodes-base.localfiletrigger/)
- [Execute Command](https://docs.n8n.io/integrations/builtin/core-nodes/n8n-nodes-base.executecommand/)
