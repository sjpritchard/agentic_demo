# Product Brief
Create a python Model Context Protocol RAG server that can be used to search for information on modern warplanes.

There are two apps to create:

loader.py: this takes the source text files, chunks them, and ingests the chunks into the vector database
server.py: this exposes an MCP RAG server that takes a query, retrieves data from the vector DB, and generates a response using an LLM

# File Locations
Source code: /src
Test files: /tests
Data files: /data
Specification files: /specs

# Specifications
Read the specification file for each app.

# Data
The data consists of one or more text files under /data.
Each data file contains information on a specific aircraft.

# Services, Models and Libraries to use
LLM Provider: OpenAI
Embedding model: text-embedding-3-large
Text Generation Model: GPT-4o
Vector database: ChromaDB

# Libraries
Use the following libraries in your implementation.
Consult the associated documentation when planning to ensure that you are using the right libraries, library versions, classes, methods and parameters.

openai: https://github.com/openai/openai-python
mcp: https://modelcontextprotocol.io/llms-full.txt
chromadb: https://docs.trychroma.com/docs

# API Keys
The OPENAI_API_KEY variable has been configured.