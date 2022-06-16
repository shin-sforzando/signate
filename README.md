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
  - [Competitions](#competitions)
    - [List](#list)
    - [Join](#join)
    - [Initialize](#initialize)
    - [Start](#start)
    - [Format](#format)
    - [Lint](#lint)
    - [Test](#test)
    - [Document](#document)
    - [Submit](#submit)
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
default              常用
setup                初回
list                 一覧
join-%               挑戦
hide                 秘匿
reveal               暴露
prune                破滅
help                 助言
```

### Setup

```shell
make setup
```

To get `signate.json`, access [Account Settings](https://signate.jp/account_settings).

### Competitions

#### List

To check the list of competitions, use `make list`.

#### Join

For example, to join competition No. 102,

```shell
make join-102
```

Then change to the directory of the competition.

#### Initialize

```shell
make init
```

#### Start

```shell
make start
```

#### Format

```shell
make format
```

#### Lint

```shell
make lint
```

#### Test

```shell
make test
```

#### Document

```shell
make doc
```

#### Submit

```shell
make submit
```

## Misc

## Notes

This repository is [Commitizen](https://commitizen.github.io/cz-cli/) friendly.

### LICENSE

See [LICENSE](LICENSE).

### Contributors

- [Shin'ichiro Suzuki](https://github.com/shin-sforzando)
