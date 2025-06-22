python -m eval.eval \
    --model vllm \
    --tasks HumanEvalPlus,MBPPPlus,SWEbench \
    --model_args "pretrained=rasdani/git-diff-Qwen-4B,revision=f004bfd603d690de57053e6dfd2dab066dbf7ac2" \
    --batch_size 1 \
    --apply_chat_template \
    --output_path logs