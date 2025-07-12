export OPENAI_API_KEY=EMPTY

# python -m eval.eval \
#     --model openai-chat-completions \
#     --tasks SWEbench \
#     --model_args "model=rasdani/git-diff-Qwen-1.7B,num_concurrent=32,base_url=http://localhost:8000/v1/chat/completions" \
#     --apply_chat_template \
#     --output_path logs

MODEL=/root/persistent/checkpoints/deepseek_r1_qwen14b_swe_rl_8k/global_step_56/actor/huggingface
# MODEL="deepseek-ai/DeepSeek-R1-Distill-Qwen-14B"

# TASKS=HumanEvalPlus
TASKS=MBPPPlus

python -m eval.eval \
    --model openai-chat-completions \
    --tasks $TASKS \
    --model_args "model=$MODEL,num_concurrent=1,base_url=http://localhost:8000/v1/chat/completions" \
    --apply_chat_template \
    --output_path logs
