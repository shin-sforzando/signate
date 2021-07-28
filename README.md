# signate

<!-- Badges -->
[![push](https://github.com/shin-sforzando/signate/actions/workflows/push.yml/badge.svg)](https://github.com/shin-sforzando/signate/actions/workflows/push.yml)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg)](http://commitizen.github.io/cz-cli/)
[![License: MIT](https://img.shields.io/badge/License-MIT-blue.svg)](https://opensource.org/licenses/MIT)

<!-- Screenshots -->
|![Screenshot 1](https://placehold.jp/32/3d4070/ffffff/720x480.png?text=Screenshot%201)|![Screenshot 2](https://placehold.jp/32/703d40/ffffff/720x480.png?text=Screenshot%202)|
|:---:|:---:|
|Screenshot 1|Screenshot 2|

<!-- Synopsis -->
Source codes for [SIGNATE](https://signate.jp).

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

- Python 3.6 or higher
  - [signate CLI](https://pypi.org/project/signate/)

## How to

```shell
$ make help
setup                初回
hide                 秘匿
reveal               暴露
doc                  文書
clean                掃除
help                 助言
```

### Setup

Put the SIGNATE Token at `~/.signate/signate.json`.
To get it, access [Account Settings](https://signate.jp/account_settings).

```shell
make setup
```

Build a virtual environment to avoid global pollution.

```shell
python3 -m venv venv
source venv/bin/activate
pip install -r requirements.txt
```

### Develop

For example, to start competition No. 102,

```shell
mkdir -p 102/data
signate download --competition-id=102 --path 102/data
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
