#!/bin/sh

cat > /tmp/config.toml << EOF
[app]
address = "0.0.0.0:9000"

[db]
host = "${LISTMONK_db_host}"
port = ${LISTMONK_db_port}
user = "${LISTMONK_db_user}"
password = "${LISTMONK_db_password}"
database = "${LISTMONK_db_database}"
ssl_mode = "disable"
max_open = 25
max_idle = 25
max_lifetime = "300s"
EOF

/listmonk/listmonk --install --yes --config /tmp/config.toml

/listmonk/listmonk --config /tmp/config.toml
