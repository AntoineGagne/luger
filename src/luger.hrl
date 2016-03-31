-define(SYSLOG_BASE_PRIORITY, 1 * 8).

-define(EMERGENCY, ?SYSLOG_BASE_PRIORITY + 0).
-define(ALERT, ?SYSLOG_BASE_PRIORITY + 1).
-define(CRITICAL, ?SYSLOG_BASE_PRIORITY + 2).
-define(ERROR, ?SYSLOG_BASE_PRIORITY + 3).
-define(WARNING, ?SYSLOG_BASE_PRIORITY + 4).
-define(NOTICE, ?SYSLOG_BASE_PRIORITY + 5).
-define(INFO, ?SYSLOG_BASE_PRIORITY + 6).
-define(DEBUG, ?SYSLOG_BASE_PRIORITY + 7).

-record(config, { app    :: string(),
                  host   :: string(),
                  statsd :: boolean()
                }).

-record(syslog_udp_config, { host :: string(),
                             port :: integer() }).

-record(stderr_config, { min_priority :: integer() }).
