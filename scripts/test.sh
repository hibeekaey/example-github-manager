#!/bin/bash

# Format terraform files
terraform fmt -diff -recursive

# Validate terraform module
terraform validate

# Test terraform module
terraform test
