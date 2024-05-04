#!/bin/bash

OUTPUT_FILE="README.md"

# Generate main doc
terraform-docs markdown --output-file $OUTPUT_FILE  --output-mode inject .

# Generate docs for modules
cd modules

IFS=$'\n' modules=($(ls))

for module in "${modules[@]}"; do
  if terraform-docs markdown --output-file $OUTPUT_FILE --output-mode inject $module; then
    echo "Successfully documented $module"
  else
    echo "Failed to document $module"
  fi
done

cd ..
