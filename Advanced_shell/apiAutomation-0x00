#!/bin/bash

POKEMON_URL="https://pokeapi.co/api/v2/pokemon/pikachu"
OUTPUT_FILE="data.json"
ERROR_FILE="errors.txt"

# Make the API request
curl -s -f "$POKEMON_URL" -o "$OUTPUT_FILE" 2>>"$ERROR_FILE"

# Check if the request was successful
if [ $? -ne 0 ]; then
    echo "Failed to fetch data for Pikachu from the Pokémon API at $(date)" >> "$ERROR_FILE"
else
    echo "Successfully fetched data for Pikachu and saved to $OUTPUT_FILE"
fi 