#!/bin/bash
echo "Starting training with Accelerate & DeepSpeed Zero3..."

ACCELERATE_LOG_LEVEL=info accelerate launch \
    --config_file accelerate_configs/deepspeed_zero3.yaml \
    scripts/run_rmipo.py \
    training_configs/mistral-7b-base-rmipo.yaml