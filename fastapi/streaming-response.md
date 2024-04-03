# Streaming Response
```
Chunked Transfer Encoding:

HTTP allows you to break the POST request body into multiple chunks.
You set the Transfer-Encoding: chunked header.
Each chunk is sent with a size header, allowing the server to process data as it arrives.
Libraries like Python's requests or curl often handle this automatically when you provide an iterator or generator as the request body.

```
**Reference:** [https://fastapi.tiangolo.com/advanced/custom-response/#streamingresponse](https://fastapi.tiangolo.com/advanced/custom-response/#streamingresponse)
