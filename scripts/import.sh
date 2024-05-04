#!/bin/bash

# Import repositories
IFS=$'\n' repositories=($(cat scripts/repositories.txt))

for repository in "${repositories[@]}"; do
  if terraform import module.repository[\"$repository\"].github_repository.this $repository; then
    echo "Successfully imported $repository"
  else
    echo "Failed to import $repository"
  fi
done
