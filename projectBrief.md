# Product Brief
Create a python Model Context Protocol RAG server that can be used to search for information on modern warplanes.

There are two apps to create:

loader.py: this takes the downloaded source content, chunks it, and ingests it into the vector database
server.py: this exposes an MCP RAG server that takes a query, retrieves data from the vector DB, and generates a response using an LLM

# File Locations
Source code: /src
Test files: /tests
Data files: /data
Specification files: /specs

# Specifications
Read the specification file for each app.

# Data
You will need to search and extract content from wikipedia using the Tavily search and extract tool to obtain the source data for the vector DB. Obtain data for the following aircraft:

- B-1 Lancer
- F-117A Nighthawk
- F/A-18C Hornet
- F-22 Raptor
- F-35 Lightning II

Write the data as markdown files into the /data folder

When you chunk and ingest content into the vector database, you will need to inject some aircraft identifying information into each chunk to disambiguate the chunk and ensure that it is related to the correct aircraft when retrieved.


# Services, Models and Libraries to use
LLM Provider: OpenAI
Embedding model: text-embedding-3-large
Text Generation Model: GPT-4o
Vector database: ChromaDB

# Documentation
Consult the following documentation BEFORE writing any code:

OpenAI Python SDK: https://github.com/openai/openai-python
Model Context Protocol: https://modelcontextprotocol.io/llms-full.txt
ChromaDB: https://docs.trychroma.com/docs

# API Keys
The OPENAI_API_KEY variable has been set.

# Steps
1. Obtain the source data
2. Create the loader app
3. Create the server app