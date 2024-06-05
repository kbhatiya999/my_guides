[https://docs.python.org/3/library/stdtypes.html#printf-style-string-formatting](https://docs.python.org/3/library/stdtypes.html#printf-style-string-formatting)

```
print('%(language)s has %(number)03d quote types.' %
      {'language': "Python", "number": 2})
# Python has 002 quote types.
```

## Important points
* **example format :**
* %(asctime)-10s.%(msecs)03d %(levelname)-8s %(session_id)s %(prompt_id)s %(user_id)s (%(elapsed_time)6.2f) %(filename)s %(name)-5s %(message)s
* width and precision
  
  
