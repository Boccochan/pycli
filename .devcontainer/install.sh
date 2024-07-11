#!/bin/bash
set -e
poetry install --no-interaction || { echo "Failed to install dependencies with Poetry"; exit 1; }

exit 0