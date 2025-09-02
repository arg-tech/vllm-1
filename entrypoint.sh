#!/bin/sh

set -e
API_KEY=$(cat "/run/secrets/vllm_api_key")
export VLLM_API_KEY=$API_KEY

python3 -m vllm.entrypoints.openai.api_server \
  --model Qwen/Qwen3-0.6B
  --dtype=half
  
