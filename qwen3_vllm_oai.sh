export OPENAI_API_KEY=EMPTY

python -m eval.eval \
    --model openai-chat-completions \
    --tasks MBPP \
    --model_args "model=Qwen/Qwen3-1.7B,num_concurrent=64,base_url=http://localhost:8000/v1/chat/completions" \
    --batch_size 16 \
    --output_path logs