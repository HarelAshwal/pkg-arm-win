#!/bin/bash
echo Your container args are: "$@"
cd "project/$@"
pkg . -t node10-arm64 --public -b  --no-bytecode --public-packages dequeue,component-bind,object-component,blob,component-inherit,better-assert,callsite,tslib

