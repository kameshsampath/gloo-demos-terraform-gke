SHELL := /usr/bin/env bash
ENV_FILE := .env
include ${ENV_FILE}
export $(shell sed 's/=.*//' ${ENV_FILE})
CURRENT_DIR = $(shell pwd)

.PHONY:	clean
clean:
	rm -rf .terraform .terraform.lock.hcl

.PHONY: format
format:	
	terraform fmt --recursive $(CURRENT_DIR)

.PHONY:	init
init:
	terraform init

.PHONY:	plan
plan:	format
	terraform plan

.PHONY:	validate
validate:	format
	terraform validate

.PHONY:	apply
apply:	validate
	terraform apply

.PHONY:	destroy
destroy:
	terraform destroy