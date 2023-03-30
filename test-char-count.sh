#! /bin/bash

if ! [[ -x char-count ]]; then
    echo "program char-count executable does not exist"
    exit 1
fi

tester/run-tests.sh -d tests-char-count
