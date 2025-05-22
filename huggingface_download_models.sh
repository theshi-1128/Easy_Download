#!/bin/bash

while read model target_dir; do
  echo "Preparing to download $model ..."

  base_dir="$target_dir"
  count=1

  while [ -d "$target_dir" ]; do
    target_dir="${base_dir}_$count"
    ((count++))
  done

  echo "Downloading $model to $target_dir ..."
  mkdir -p "$target_dir"
  HF_ENDPOINT=https://hf-mirror.com huggingface-cli download "$model" --local-dir "$target_dir"

done < model_download.txt
