# Aircraft Information RAG System

A Retrieval-Augmented Generation (RAG) system for providing information about military aircraft using the Model Context Protocol (MCP).

## Overview

This project implements a RAG system that allows users to query information about modern military aircraft. The system consists of two main components:

1. **Data Loader (`loader.py`)**: Processes aircraft information from markdown files, chunks the text, generates embeddings, and stores everything in a vector database.
2. **MCP Server (`server.py`)**: Exposes an MCP tool that accepts user queries, retrieves relevant information from the vector database, and generates natural language responses using a large language model.

## Features

- Processes markdown files containing aircraft information
- Chunks text into segments with overlap for better context preservation
- Generates embeddings using OpenAI's text-embedding-3-large model
- Stores chunks and embeddings in ChromaDB vector database
- Provides an MCP server with a query tool
- Retrieves the most relevant information based on vector similarity
- Generates natural language responses using OpenAI's GPT-4o model

## Installation

1. Clone the repository:
   ```
   git clone <repository-url>
   cd aircraft-info-rag
   ```

2. Create a virtual environment:
   ```
   python -m venv venv
   source venv/bin/activate  # On Windows: venv\Scripts\activate
   ```

3. Install dependencies:
   ```
   pip install -r requirements.txt
   ```

4. Set up your OpenAI API key:
   ```
   export OPENAI_API_KEY=your-api-key-here
   ```
   Or create a `.env` file in the project root with:
   ```
   OPENAI_API_KEY=your-api-key-here
   ```

## Usage

### 1. Prepare Aircraft Data

Create markdown files in the `data` directory with information about aircraft. Each file should be named after the aircraft (e.g., `F-22-Raptor.md`) and contain detailed information about the aircraft.

### 2. Load Data

Run the data loader to process the markdown files and store them in the vector database:

```
python -m src.loader
```

### 3. Start the MCP Server

Run the MCP server to start serving queries:

```
python -m src.server
```

### 4. Query the Server

Use an MCP client to query the server. Example:

```python
import mcp

client = mcp.Client("aircraft-info-server")
response = client.query(query="What is the top speed of the F-22 Raptor?")
print(response["response"])
```

## Aircraft Included

The system includes information about the following aircraft:

- B-1 Lancer
- F-117A Nighthawk
- F/A-18C Hornet
- F-22 Raptor
- F-35 Lightning II

## Configuration

Configuration settings can be modified in `src/config.py`. Key settings include:

- Data directory path
- Chunk size and overlap
- ChromaDB collection name and persistence directory
- OpenAI model names
- MCP server name and type

## License

[MIT License](LICENSE)