SCRIPTS_DIR = scripts

# Default target (executed when you run 'make' with no arguments)
all: init-upgrade

# Initialize terraform
init-upgrade:
	terraform init -upgrade -reconfigure

# Generate Docs
docs:
	$(SCRIPTS_DIR)/gen-docs.sh

# Import resources
import: init-upgrade
	$(SCRIPTS_DIR)/import.sh

# Test module
test: init-upgrade
	$(SCRIPTS_DIR)/test.sh

# Plan module
plan: init-upgrade
	terraform plan -out=plan.out

# Apply changes
apply: plan test
	terraform apply -auto-approve plan.out
