## Logllm
A log-based anomaly detection framework that leverages the strengths of Large Language Models (LLMs).

Combines BERT (encoder) to extract semantic embeddings from individual log messages and Llama (decoder) to perform sequence-level anomaly classification.

Introduces a projector module to align BERT's and Llama’s embedding spaces for coherent semantic processing

**Architecture**
```
┌──────────────────────────────┐
│   Raw Log Messages (Text)    │
└────────────┬─────────────────┘
             ↓ (Regex Cleaning)
┌──────────────────────────────┐
│ Cleaned Logs (Normalized Text)│
└────────────┬─────────────────┘
             ↓ (One-by-one)
┌────────────▼────────────┐
│        BERT Encoder     │   ← Understands the *semantics* of each log
└────────────┬────────────┘
             ↓ (Vector: [E1], [E2], ...)
┌────────────▼────────────┐
│       Projector (MLP)   │   ← Aligns BERT space to LLaMA input space
└────────────┬────────────┘
             ↓ (Aligned Embeddings)
┌────────────▼────────────┐
│     LLaMA Decoder (LLM) │   ← Understands the *sequence pattern*
└────────────┬────────────┘
             ↓
┌────────────▼────────────┐
│   Anomaly Classifier    │   ← Binary output: Anomalous / Normal
└─────────────────────────┘
```





**Data sets**

HDFS, BGL, Thunderbird, Liberty

[logllm github](https://github.com/guanwei49/LogLLM)

[research paper](https://arxiv.org/pdf/2411.08561)

 