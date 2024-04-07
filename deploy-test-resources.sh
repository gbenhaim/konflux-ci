#!/bin/bash -e

script_path="$(dirname -- "${BASH_SOURCE[0]}")" 

main() {
    echo "Deploying test resources" >&2
    deploy
}

deploy() {
    kubectl "${script_path}/test/resources/demo-users"
}

if [[ "${BASH_SOURCE[0]}" == "$0" ]]; then
    main "$@"
fi
