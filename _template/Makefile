# -*- coding: utf-8 -*-

TIMESTAMP := $(shell date +%Y%m%d%H%M%S)
MAKEFILE_DIR := $(dir $(realpath $(firstword $(MAKEFILE_LIST))))
OS_NAME := $(shell uname -s)

CMD_DOCKER := docker
CMD_DOCKER_COMPOSE := docker compose

MAIN_CONTAINER_APP :=
MAIN_CONTAINER_SHELL := bash
OPEN_TARGET :=

OPTS :=
.DEFAULT_GOAL := default
.PHONY: default init download hide reveal start open format lint test submit clean prune help

default: ## 常用

init: reveal download ; ## 構築
	pip install -r requirements.txt
	lefthook install
	direnv allow
	if [ $(OS_NAME) = "Darwin" ]; then say "The initialization process is complete." ; fi

download: ## 取得
	echo "TODO: Not Implemented Yet!"
	if [ $(OS_NAME) = "Darwin" ]; then say "The download process is complete." ; fi

hide: ## 秘匿
	git secret hide -v

reveal: ## 暴露
	git secret reveal -v

start: ## 開始
	echo "TODO: Not Implemented Yet!"
	if [ $(OS_NAME) = "Darwin" ]; then say "The process is started." ; fi

open: ## 閲覧
	echo "TODO: Not Implemented Yet!"
	# if [ $(OS_NAME) = "Darwin" ]; then open ${OPEN_TARGET} ; fi

format: ## 整形
	black $(OPTS) .
	if [ $(OS_NAME) = "Darwin" ]; then say "The test process is complete." ; fi

lint: ## 検証
	flake8 $(OPTS) .
	if [ $(OS_NAME) = "Darwin" ]; then say "The test process is complete." ; fi

test: ## 試験
	echo "TODO: Not Implemented Yet!"
	if [ $(OS_NAME) = "Darwin" ]; then say "The test process is complete." ; fi

submit: ## 投稿
	echo "TODO: Not Implemented Yet!"
	# signate submit -competition-id=102 data/submit.tsv --note="blah blah blah"
	if [ $(OS_NAME) = "Darwin" ]; then say "The submit process is complete." ; fi

clean: ## 掃除
	echo "TODO: Not Implemented Yet!"
	if [ $(OS_NAME) = "Darwin" ]; then say "The cleanup process is complete." ; fi

prune: ## 破滅
	$(CMD_DOCKER) system prune --all --force --volumes
	if [ $(OS_NAME) = "Darwin" ]; then say "The pruning process is complete." ; fi

help: ## 助言
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
