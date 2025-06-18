#!/bin/bash

# Extract fields using jq
name=$(jq -r '.name' data.json | sed 's/.*/\u&/')
height=$(jq -r '.height' data.json)
weight=$(jq -r '.weight' data.json)
type=$(jq -r '.types[0].type.name' data.json | sed 's/.*/\u&/')

# Convert height (decimetres to metres) and weight (hectograms to kg)
formatted_height=$(awk "BEGIN { printf \"%.1f\", $height/10 }")
formatted_weight=$(awk "BEGIN { printf \"%.0f\", $weight/10 }")

# Print in the required format
echo "$name is of type $type, weighs ${formatted_weight}kg, and is ${formatted_height}m tall." 