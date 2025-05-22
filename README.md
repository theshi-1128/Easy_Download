# Easy_Download
An easy script for downloading models in batches from Hugging Face and ModelScope



### 📄 `model_download.txt` Usage Guide

Each line in `model_download.txt` specifies one model to download. You can use it in the following formats:

---

#### ✅ **Format: Two-column (Custom directory)**

Specify both the model name and the desired target directory (relative or absolute).

**Example:**

```
LLM-Research/Llama-Prompt-Guard-2-22M LlamaGuard/Llama-Prompt-Guard-2-22M
LLM-Research/Llama-Prompt-Guard-2-86M LlamaGuard/Llama-Prompt-Guard-2-86M
```
---




### 📝 Script: `huggingface/modelscope_download_models.sh` Usage Guide

This script reads model download tasks from `model_download.txt` and downloads each model to a target folder using [HuggingFace](https://huggingface.co/) or [ModelScope](https://modelscope.cn/).

#### 🔧 What It Does:

1. **Reads** each line in `model_download.txt`, which contains:

   * A model name (e.g., `LLM-Research/Llama-Prompt-Guard-2-22M`)
   * A target directory to save the model (e.g., `LlamaGuard/Llama-Prompt-Guard-2-22M`)

2. **Checks** if the target directory already exists:

   * If yes, it appends `_1`, `_2`, etc. to create a new unique folder to avoid overwriting.

3. **Creates** the target directory if it doesn't exist.

4. **Downloads** the model and saves it to the prepared folder.

#### 📂 Example:

If the input file contains:

```
LLM-Research/Llama-Prompt-Guard-2-22M LlamaGuard/Llama-Prompt-Guard-2-22M
```

And if `LlamaGuard/Llama-Prompt-Guard-2-22M` already exists, the model will be downloaded to:

```
LlamaGuard/Llama-Prompt-Guard-2-22M_1
```

#### ✅ Requirements:

* HuggingFace CLI installed (`pip install huggingface_hub`)
* ModelScope CLI installed (`pip install modelscope`)
* `model_download.txt` properly formatted

