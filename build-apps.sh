#!/usr/bin/env bash

./build-stacks.sh
./build-builders.sh

pack build awanku/example-laravel --path apps/laravel --builder awanku/buildpack-builder-php --verbose