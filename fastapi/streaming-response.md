# Streaming Response
```
Chunked Transfer Encoding:

HTTP allows you to break the POST request body into multiple chunks.
You set the Transfer-Encoding: chunked header.
Each chunk is sent with a size header, allowing the server to process data as it arrives.
Libraries like Python's requests or curl often handle this automatically when you provide an iterator or generator as the request body.

```
**Reference:** [https://fastapi.tiangolo.com/advanced/custom-response/#streamingresponse](https://fastapi.tiangolo.com/advanced/custom-response/#streamingresponse)

Example:
```
curl -v -N  -X 'POST' \
  'http://0.0.0.0:8000/api/chat' \
  -H 'accept: application/json' \
  -H 'Content-Type: application/json' \
  -d '{
  "messages": [
    {
      "role": "user",
      "content": "I want to see datat streaming so say `HI` 10000 times"
    }
  ]
}'

```
**-N:** This will not use buffer and the prts of reponse received will be printed feeling like streaming.
