# CartoDB PostgreSQL extension framework

## Goals
* Ease the lives of developers, systems and maintainers
* Strict separation between source code and the boilerplate required to deploy a pg extension
* As robust as possible

## Requirements
* Minimize boilerplate
* Python code and sql code in extension shall go hand in hand
* Use virtualenv or equivalent to avoid library dependency issues

## Limitations
* The developer is responsible for ensuring upgrade/downgrade paths work (?)
* The extension shall not create any global object, such as roles or tablespaces
* Cannot package data/config, just functions

## Basic usage
```
sudo PGUSER=postgres make install installcheck
```
