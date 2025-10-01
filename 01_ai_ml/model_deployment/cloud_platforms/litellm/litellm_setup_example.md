# LiteLLM Proxy Setup Example

## Command
```bash
uvx --from 'litellm[proxy]' litellm --model 'ollama/gemma3:1b'
```

## Request
```bash
curl -X 'POST' \
  'http://0.0.0.0:4000/chat/completions' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d '{
  "model": "ollama/gemma3:1b",
  "messages": [
    {
      "role": "user",
      "content": "Hello, how are you?"
    }
  ]
}'
```

## Response
```json
{
  "id": "chatcmpl-0c5c86c1-1c48-4355-8346-042afb824bb7",
  "created": 1758220580,
  "model": "ollama/gemma3:1b",
  "object": "chat.completion",
  "choices": [
    {
      "finish_reason": "stop",
      "index": 0,
      "message": {
        "content": "Hello! I'm doing well, thanks for asking. How about you? 😊 \n\n(I'm functioning as a helpful AI, so I'm feeling good!)",
        "role": "assistant"
      }
    }
  ],
  "usage": {
    "completion_tokens": 37,
    "prompt_tokens": 20,
    "total_tokens": 57
  }
}
```
