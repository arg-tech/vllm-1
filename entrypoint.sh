#!/bin/sh

set -e
API_KEY=$(cat "/run/secrets/vllm_api_key")
export VLLM_API_KEY=$API_KEY

python3 -m vllm.entrypoints.openai.api_server \
  --model Qwen/Qwen3-4B \
  --dtype=half \
  --gpu-memory-utilization 0.95 \
  --max-model-len 4096 \
  --disable-log-requests
