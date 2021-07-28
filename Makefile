# -*- coding: utf-8 -*-

TIMESTAMP := $(shell date +%Y%m%d%H%M%S)
SHELL=zsh

.PHONY: setup hide reveal doc clean help

setup: reveal ## 初回
	mkdir -p ~/.signate
	cp signate.json ~/.signate/signate.json

hide: ## 秘匿
	git secret hide -v

reveal: ## 暴露
	git secret reveal -v

doc: ## 文書
	echo "TODO: Not Implemented Yet!"

clean: ## 掃除
	rm -rf log/*

help: ## 助言
	@grep -E '^[a-zA-Z_-]+:.*?## .*$$' $(MAKEFILE_LIST) | awk 'BEGIN {FS = ":.*?## "}; {printf "\033[36m%-20s\033[0m %s\n", $$1, $$2}'
