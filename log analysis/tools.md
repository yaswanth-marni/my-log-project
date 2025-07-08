# Open Source tools
**GRAYLOG**

-powerful centralized log management system

-designed for large scale log data analysis

-it has alertings and dashboards

-works well with syslogs,Netflow (IP traffic),SNMP (Simple Network Management Protocol)

**ELK Stack/Elastic stack**

-popular log analysis stack

-Real time data ingestion,processing,visualization

E-> Elastic search --> stores & index logs

L->Logstash --> ingests & process logs

K->Kibana --> visualizes data

**Logalyze**

-focusses on simple syslog based analysis

**Fluentd**

-log collector that routes logs to various outputs (graylog,elk...)

*500+ plugins

-loght weight & scalable

-great for micro services & containerized environments

**Nagios**

-monitors systems,network services & apps

-alerts when something wrong ---> @servers down,@disk space low

-basic log monitoring using pluggins

**Uptrace**

-collects logs from kubernetes,docker & cloudnative apps

-corelates error logs with open telemetry traces to identify root causes

**Grafana loki**

-cloudnative log management

-reduces storage costs by 10x to full text systems
