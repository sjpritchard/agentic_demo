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
Each data file contains information on a specific aircraft in plain text format.
Don't try to read the files yourself as they are very large.
An initial file has been provided but more could exist in future

# Services, Models and Libraries to use
LLM Provider: OpenAI
Embedding model: text-embedding-3-large
Text Generation Model: GPT-4o
Vector database: ChromaDB

# Libraries
## Mandatory Libraries

- openai
- mcp
- chromadb

# API Keys
The OPENAI_API_KEY environment variable has been configured.

# Steps
1. Create the memory bank
2. Perform planning
3. Research library documentation
4. Write your library research to memory-bank/libraries.md
5. Implement the solution
6. Install dependencies