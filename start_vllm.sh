#!/bin/bash

# MODEL="rasdani/qwen3_8b_swe_rl_8k"
# MODEL="deepseek-ai/DeepSeek-R1-Distill-Llama-8B"
# MODEL="deepseek-ai/DeepSeek-R1-Distill-Qwen-7B"
# MODEL="/root/persistent/checkpoints/deepseek_r1_llama_8b_swe_rl_8k/global_step_12/actor/huggingface"
# MODEL="/root/persistent/checkpoints/deepseek_r1_7b_swe_rl_8k/global_step_12/actor/huggingface"
# MODEL="deepseek-ai/DeepSeek-R1-Distill-Qwen-14B"
# MODEL="Qwen/Qwen3-14B"
MODEL="/root/persistent/checkpoints/deepseek_r1_qwen14b_swe_rl_8k/global_step_56/actor/huggingface"
# MODEL="deepseek-ai/DeepSeek-R1-Distill-Qwen-14B"

# MAX_MODEL_LEN=16384
MAX_MODEL_LEN=32768


export VLLM_HTTP_TIMEOUT_KEEP_ALIVE=600

# vllm serve $MODEL \
#     --host 0.0.0.0 \
#     --port 8000 \
#     --max-model-len $MAX_MODEL_LEN \
#     --tensor-parallel-size 2 \
#     --dtype auto \
#     --api-key EMPTY

vllm serve $MODEL \
    --host 0.0.0.0 \
    --port 8000 \
    --tensor-parallel-size 2 \
    --dtype auto \
    --api-key EMPTY
