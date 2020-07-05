#!/usr/bin/env bash

function build_builder() {
    name="${1}"
    pack create-builder awanku/buildpack-builder-${name} --builder-config builders/${name}/builder.toml
}

builders="$(ls builders)"
for builder in $builders; do
    echo "Building builder: ${builder}"
    build_builder "${builder}"
done