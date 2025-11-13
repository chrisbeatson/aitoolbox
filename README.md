# AI Sandbox

Kickstarts a sandbox with n8n (with puppeteer node), postgres, qdrant, neo4j, and redis

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

bring up the containers

```bash
docker compose -p aisandbox -f docker-compose.yml up -d
```

## Upgrading

To update all containers to their latest versions, run these commands:

```bash

# Stop all services
docker compose -p aisandbox -f docker-compose.yml down

# Pull latest versions of all containers
docker compose -p aisandbox -f docker-compose.yml pull

# Restart the services
docker compose -p aisandbox -f docker-compose.yml up -d

```

## 👓 Recommended reading

n8n is full of useful content for getting started quickly with its AI concepts
and nodes.

- [AI agents for developers: from theory to practice with n8n](https://blog.n8n.io/ai-agents/)
- [Tutorial: Build an AI workflow in n8n](https://docs.n8n.io/advanced-ai/intro-tutorial/)
- [Langchain Concepts in n8n](https://docs.n8n.io/advanced-ai/langchain/langchain-n8n/)
- [Demonstration of key differences between agents and chains](https://docs.n8n.io/advanced-ai/examples/agent-chain-comparison/)
- [What are vector databases?](https://docs.n8n.io/advanced-ai/examples/understand-vector-databases/)

## 🛍️ More AI templates

For more AI workflow ideas, visit the [**official n8n AI template
gallery**](https://n8n.io/workflows/?categories=AI). From each workflow,
select the **Use workflow** button to automatically import the workflow into
your local n8n instance.

### Accessing local files

The self-hosted AI starter kit will create a shared folder (by default,
located in the same directory) which is mounted to the n8n container and
allows n8n to access files on disk. This folder within the n8n container is
located at `/data/shared` -- this is the path you’ll need to use in nodes that
interact with the local filesystem.

**Nodes that interact with the local filesystem**

- [Read/Write Files from Disk](https://docs.n8n.io/integrations/builtin/core-nodes/n8n-nodes-base.filesreadwrite/)
- [Local File Trigger](https://docs.n8n.io/integrations/builtin/core-nodes/n8n-nodes-base.localfiletrigger/)
- [Execute Command](https://docs.n8n.io/integrations/builtin/core-nodes/n8n-nodes-base.executecommand/)
