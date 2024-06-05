# logging library

## Incremental
* **dictconfig Incremental**: [https://docs.python.org/3/library/logging.config.html#incremental-configuration](https://docs.python.org/3/library/logging.config.html#incremental-configuration)

  when the incremental key of a configuration dict is present and is True, the system will completely **ignore any formatters and filters** entries, and **process only the level settings in the handlers** entries, and the **level and propagate settings in the loggers** and root entries.
