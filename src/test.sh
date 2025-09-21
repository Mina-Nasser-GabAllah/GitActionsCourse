#!/bin/bash

#src/test.sh

EXPETED="Hello, Test!"
OUTPUT=$(node -e "console.log(require('./src/app')('Test'))")
if [ "$OUTPUT" == "$EXPETED" ]; then
    echo "✅ Test passed"
    exit 0
else
    echo "❌ Test failed: expected '$EXPETED' but got '$OUTPUT'"
    exit 1
fi