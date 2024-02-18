export METABASE_DOCKER_VERSION=v0.48.6
export METABASE_CLICKHOUSE_DRIVER_VERSION=1.3.2

mkdir -p mb/plugins && cd mb
curl -L -o plugins/ch.jar https://github.com/ClickHouse/metabase-clickhouse-driver/releases/download/$METABASE_CLICKHOUSE_DRIVER_VERSION/clickhouse.metabase-driver.jar
# Moved to docker compose
# docker run -d -p 3000:3000 \
#   --mount type=bind,source=$PWD/plugins/ch.jar,destination=/plugins/clickhouse.jar \
#   metabase/metabase:$METABASE_DOCKER_VERSION
