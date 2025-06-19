export OPENAI_API_KEY=EMPTY

python -m eval.eval \
    --model openai-chat-completions \
    --tasks SWEbench \
    --model_args "model=rasdani/git-diff-Qwen-1.7B,num_concurrent=32,base_url=http://localhost:8000/v1/chat/completions" \
    --apply_chat_template \
    --output_path logs