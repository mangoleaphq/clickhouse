services:
  clickhouse:
    image: 'clickhouse/clickhouse-server:23.8-alpine'
    container_name: 'metabase-clickhouse-server'
    ports:
      - '8123:8123'
      - '9000:9000'
    ulimits:
      nofile:
        soft: 262144
        hard: 262144
  metabase:
    image: 'my-metabase-with-clickhouse:v0.0.1'
    container_name: 'metabase-with-clickhouse'
    ports:
      - '3000:3000'
