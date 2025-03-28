Feature: Data loader

    The data loader is a simple script that loads a set of text files
    from the /data folder and ingests them into the vector database.
    Keep it simple as it will be run once at the start of the project.
    Use hard coded paths and settings for now.

    Example: Load data
        When the data loader is run
        Then the aircraft data is loaded from the /data folder
        And the vector database is created or re-created
        And the aircraft data from each file is chunked into 200 word chunks with a 20 word overlap
        And embeddings are computed for each chunk
        And each chunk and embedding is ingested into the vector database