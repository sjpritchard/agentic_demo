Feature: MCP RAG Server

    The MCP RAG server is a simple SSE server that exposes an MCP tool to an MCP client.
    The tool accepts a query, and returns a generated response.

    Example: Query the server
        Given the server is running
        When an MCP client submits a query to the MCP tool via 
        Then the server obtains an embedding for the query
        And the server searches the vector database for the top 5 most similar chunks
        And the server submits the query and the top 5 most similar chunks to the LLM
        And the server returns the response from the LLM to the MCP client