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

> The script will create the specified folder if it doesn't exist.
> If the folder exists, `_1`, `_2`, etc. will be appended to avoid overwriting.

---
