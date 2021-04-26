# signate

<!-- Badges -->
[![Bump Version](https://github.com/shin-sforzando/signate/workflows/Bump%20Version/badge.svg)](https://github.com/shin-sforzando/signate/actions?query=workflow:%22Bump+Version%22)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

<!-- Screenshots -->
|![Screenshot 1](https://placehold.jp/32/3d4070/ffffff/720x480.png?text=Screenshot%201)|![Screenshot 2](https://placehold.jp/32/703d40/ffffff/720x480.png?text=Screenshot%202)|
|:---:|:---:|
|Screenshot 1|Screenshot 2|

<!-- Synopsis -->
GitHub Template Repository for General Use.

<!-- TOC -->
- [Prerequisites](#prerequisites)
- [How to](#how-to)
  - [Setup](#setup)
  - [Develop](#develop)
  - [Run](#run)
  - [Lint](#lint)
  - [Test](#test)
  - [Submit](#submit)
  - [Document](#document)
- [Misc](#misc)
- [Notes](#notes)
  - [LICENSE](#license)
  - [Contributors](#contributors)

## Prerequisites

- Python 3

## How to

```shell
$ make help
ps                   監視
up                   起動
setup                初回
restart              再起
renew                転生
shell                接続
logs                 記録
follow               追跡
open                 閲覧
hide                 秘匿
reveal               暴露
deploy               配備
stop                 停止
down                 削除
clean                掃除
prune                破滅
help                 助言
```

### Setup

Prepare `~/.signate/signate.json` .

```shell
python3 -m venv .venv
source .venv/bin/activate
pip install -r requirements.txt
```

### Develop

For example, to start ompetition No. 102,

```shell
mkdir -p 102/data
signate download --competition-id=102 --path data
```

### Run

```shell
(T. B. D.)
```

### Lint

```shell
(T. B. D.)
```

### Test

```shell
(T. B. D.)
```

### Submit

```shell
signate submit -competition-id=102 data/submit.tsv --note="blah blah blah"
```

### Document

```shell
(T. B. D.)
```

## Misc

## Notes

This repository is [Commitizen](https://commitizen.github.io/cz-cli/) friendly.

### LICENSE

See [LICENSE](LICENSE).

### Contributors

- [Shin'ichiro Suzuki](https://github.com/shin-sforzando)
