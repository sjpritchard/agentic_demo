# Aircraft Information RAG System

A Python-based Model Context Protocol (MCP) RAG server for searching and retrieving information about modern warplanes.

## Overview

This system consists of two main applications:

1. **Data Loader**: Processes source content from markdown files and stores it in a vector database
2. **MCP Server**: Provides a query interface to retrieve relevant information using RAG techniques

## Features

- Loads aircraft markdown files from the `/data` folder
- Chunks content into 200 word chunks with 20 word overlap
- Computes embeddings for each chunk using OpenAI's text-embedding-3-large
- Injects aircraft identifying information into each chunk
- Stores chunks and embeddings in ChromaDB
- Exposes an MCP tool interface through an SSE server
- Accepts queries about modern warplanes
- Retrieves the top 5 most similar chunks from the vector database
- Generates responses using GPT-4o from OpenAI

## Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd aircraft-info-rag
```

2. Set up a Python environment (Python 3.12+ recommended):
```bash
python -m venv .venv
source .venv/bin/activate  # On Windows: .venv\Scripts\activate
```

3. Install dependencies using uv:
```bash
pip install uv
uv pip install -e .
```

4. Create a `.env` file with your OpenAI API key:
```
OPENAI_API_KEY=your_api_key_here
```

## Usage

### Data Loader

Before using the system, you need to load aircraft data into the vector database:

```bash
python -m src.loader
```

This will process all markdown files in the `/data` directory and store them in ChromaDB.

### MCP Server

To start the MCP server:

```bash
python -m src.server
```

The server will start on `http://0.0.0.0:8000` by default.

### Querying the Server

You can query the server using any MCP client. The server exposes a tool named `query` with the following parameters:

- `query` (required): The query about aircraft
- `aircraft` (optional): Specific aircraft to filter results by
- `top_k` (optional): Number of results to retrieve (default: 5)

## Aircraft Data

The system includes information about the following aircraft:

- B-1 Lancer
- F-117A Nighthawk
- F/A-18C Hornet
- F-22 Raptor
- F-35 Lightning II

Each aircraft's information is stored as a markdown file in the `/data` directory.

## Project Structure

```
aircraft-info-rag/
├── data/                  # Aircraft markdown files
├── src/                   # Source code
│   ├── __init__.py        # Package initialization
│   ├── config.py          # Configuration settings
│   ├── loader.py          # Data loader application
│   ├── llm.py             # LLM utilities
│   ├── server.py          # MCP server application
│   ├── text_processing.py # Text processing utilities
│   └── vector_db.py       # Vector database operations
├── tests/                 # Test files
├── .env                   # Environment variables (not in repo)
├── pyproject.toml         # Project configuration
└── README.md              # This file
```

## License

MIT