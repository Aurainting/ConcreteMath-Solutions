#!/bin/bash

SCRIPT_DIR="$(cd "$(dirname "$0")" && pwd)"

podman build -t arch-latex:cm $SCRIPT_DIR/.. -f $SCRIPT_DIR/../container/Containerfile
