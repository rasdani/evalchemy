python -m eval.eval \
    --model vllm \
    --tasks SWEbench \
    --model_args "pretrained=rasdani/git-diff-Qwen-4B,revision=f004bfd603d690de57053e6dfd2dab066dbf7ac2" \
    --batch_size 1 \
    --apply_chat_template \
    --output_path logs \
    --debug

python -m eval.eval \
    --model vllm \
    --tasks SWEbench \
    --model_args "pretrained=rasdani/git-diff-Qwen-4B" \
    --batch_size 1 \
    --apply_chat_template \
    --output_path logs \
    --debug

python -m eval.eval \
    --model vllm \
    --tasks SWEbench \
    --model_args "pretrained=deepseek-ai/DeepSeek-R1-Distill-Qwen-1.5B" \
    --batch_size 1 \
    --apply_chat_template \
    --output_path logs \
    --debug

python -m eval.eval \
    --model vllm \
    --tasks SWEbench \
    --model_args "pretrained=deepseek-ai/DeepSeek-R1-Distill-Qwen-7B" \
    --batch_size 1 \
    --apply_chat_template \
    --output_path logs \
    --debug

python -m eval.eval \
    --model vllm \
    --tasks SWEbench \
    --model_args "pretrained=deepseek-ai/DeepSeek-R1-Distill-Llama-8B" \
    --batch_size 1 \
    --apply_chat_template \
    --output_path logs \
    --debug

python -m eval.eval \
    --model vllm \
    --tasks SWEbench \
    --model_args "pretrained=deepseek-ai/DeepSeek-R1-0528-Qwen3-8B" \
    --batch_size 1 \
    --apply_chat_template \
    --output_path logs \
    --debug
