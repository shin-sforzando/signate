# -*- coding: utf-8 -*-

TIMESTAMP := $(shell date +%Y%m%d%H%M%S)
MAKEFILE_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
OS_NAME := $(shell uname -s)

PYTHON_COMMAND := python3

OPTS :=
.PHONY: default setup list init-% hide reveal prune help

default: setup ## 常用

setup: reveal ## 初回
ifeq ($(OS_NAME),Darwin)
	brew install git-secret
	brew install direnv
	brew install lefthook
endif
	mkdir -p ~/.signate
	cp signate.json ~/.signate/signate.json
	$(PYTHON_COMMAND) -m venv venv
	( venv/bin/activate; \
		pip install --upgrade pip ; \
		pip install --upgrade -r requirements.txt; \
	)
	direnv allow
	if [ $(OS_NAME) = "Darwin" ]; then say "The setup process is complete." ; fi

list: ## 一覧
	signate list

join-%: ## 挑戦
	@echo "Initializing Competition ID: ${@:join-%=%} ..."
	mkdir -p ${@:join-%=%}/data ${@:join-%=%}/logs ${@:join-%=%}/results
	cp -R -n _template/ ${@:join-%=%}
	signate download --competition-id=${@:join-%=%} --path=${@:join-%=%}/data
	if [ $(OS_NAME) = "Darwin" ]; then say "Got ready to join the competition." ; fi

hide: ## 秘匿
	git secret hide -v

reveal: ## 暴露
	git secret reveal -v

prune: ## 破滅
	$(CMD_DOCKER) system prune --all --force --volumes
	if [ $(OS_NAME) = "Darwin" ]; then say "The pruning process is complete." ; fi

help: ## 助言
	@grep -E '^[a-zA-Z_-]+.*:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
