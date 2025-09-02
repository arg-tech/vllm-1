#!/bin/sh

set -e
API_KEY=$(cat "${VLLM_API_KEY_PATH}")
export VLLM_API_KEY=$API_KEY

python -m vllm.entrypoints.openai.api_server \
  --model Qwen/Qwen3-0.6B
