# Warplanes RAG

A Python Model Context Protocol (MCP) RAG server for searching information on modern warplanes.

## Overview

This project implements a Retrieval Augmented Generation (RAG) system that allows users to query information about modern warplanes. The system consists of two main components:

1. **Data Loader**: Processes text files containing information about warplanes, chunks the text, creates embeddings, and stores them in a vector database.
2. **MCP Server**: Exposes an MCP tool that accepts queries, retrieves relevant information from the vector database, and generates responses using an LLM.

## Requirements

- Python 3.10+
- OpenAI API key (set as environment variable `OPENAI_API_KEY`)

## Installation

```bash
# Clone the repository
git clone https://github.com/yourusername/warplanes-rag.git
cd warplanes-rag

# Install dependencies
uv add openai mcp chromadb
uv add --dev pytest ruff
```

## Usage

### 1. Load Data

First, place your text files containing information about warplanes in the `data/` directory. Then run the loader script to process the data and create the vector database:

```bash
python src/loader.py
```

### 2. Start the MCP Server

Start the MCP server to expose the warplanes search tool:

```bash
python src/server.py
```

The server will start on `localhost:8000` by default.

### 3. Connect to the MCP Server

You can connect to the MCP server using any MCP client. For example, using the MCP CLI:

```bash
npx -y mcp-cli@latest connect http://localhost:8000
```

Then you can use the `warplanes_search` tool to query information about warplanes:

```bash
npx -y mcp-cli@latest use warplanes_search --query "What are the capabilities of the F/A-18C?"
```

## Project Structure

```
warplanes-rag/
├── data/                  # Text files containing warplane information
├── db/                    # Vector database (created by loader.py)
├── src/
│   ├── warplanes_rag/     # Core package
│   │   ├── __init__.py
│   │   ├── config.py      # Configuration settings
│   │   └── utils.py       # Utility functions
│   ├── loader.py          # Data loader script
│   └── server.py          # MCP server script
└── tests/                 # Unit tests
    ├── test_loader.py
    └── test_server.py
```

## Configuration

Configuration settings are stored in `src/warplanes_rag/config.py`. You can modify these settings to customize the behavior of the system:

- `CHUNK_SIZE`: Size of text chunks in words (default: 200)
- `CHUNK_OVERLAP`: Overlap between chunks in words (default: 20)
- `EMBEDDING_MODEL`: OpenAI embedding model to use (default: "text-embedding-3-large")
- `LLM_MODEL`: OpenAI LLM model to use (default: "gpt-4o")
- `SERVER_HOST`: Host to bind the MCP server to (default: "localhost")
- `SERVER_PORT`: Port to bind the MCP server to (default: 8000)
- `TOP_K_RESULTS`: Number of chunks to retrieve from the vector database (default: 5)

## Testing

Run the tests using pytest:

```bash
pytest
```

## License

MIT