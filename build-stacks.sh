#!/usr/bin/env bash
set -x

function build_stack() {
    name="${1}"
    stack_id="id.awanku.stacks.${name}"
    base_image="awanku/buildpack-${name}-base"
    build_image="awanku/buildpack-${name}-build"
    run_image="awanku/buildpack-${name}-run"

    docker build -t "${base_image}" "stacks/${name}/base"
    docker build --build-arg "base_image=${base_image}" --build-arg "stack_id=${stack_id}" -t "${build_image}"  "stacks/${name}/build"
    docker build --build-arg "base_image=${base_image}" --build-arg "stack_id=${stack_id}" -t "${run_image}"  "stacks/${name}/run"
}

stacks=$(ls ./stacks)
for stack in $stacks; do
    echo "Building stack: ${stack}"
    build_stack "${stack}"
done
