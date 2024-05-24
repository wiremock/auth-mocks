#!/bin/sh

selectedMock=${1:-google}

echo "Running mock $selectedMock"
/docker-entrypoint.sh --root-dir /mocks/$selectedMock "$@"