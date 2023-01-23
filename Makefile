SHELL:=/bin/bash
REQUIRED_BINARIES := kubectl cosign helm terraform kubectx kubecm ytt yq jq
WORKING_DIR := $(shell dirname $(realpath $(firstword $(MAKEFILE_LIST))))
SCRIPTS_DIR := ${WORKING_DIR}/scripts
TERRAFORM_DIR := ${WORKING_DIR}/terraform

HARVESTER_CONTEXT="harvester"
BASE_URL=mustafar.lol
GITEA_URL=git.$(BASE_URL)
GIT_ADMIN_PASSWORD="C4rb1De_S3cr4t"
CLOUDFLARE_TOKEN=""

# Carbide info
CARBIDE_USER="internal-tester-read"
CARBIDE_PASSWORD=""
IMAGES_FILE=""

# Destination Registry info
DEST_REGISTRY=harbor.$(BASE_URL)
DEST_REGISTRY_USER=admin
DEST_REGISTRY_PASS=""

sync-images:
	@printf "\n===>Syncing Images\n";
	@${SCRIPTS_DIR}/sync-images.sh $(DEST_REGISTRY) '$(DEST_REGISTRY_USER)' '$(DEST_REGISTRY_PASS)'

deploy-tekton:
	@printf "\n===>Deploying Tekton\n";
	@${SCRIPTS_DIR}/deploy-tekton.sh $(DEST_REGISTRY)
