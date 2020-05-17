FROM postgres
COPY schema/001-create-schema.sql /docker-entrypoint-initdb.d/
COPY schema/002-create-admin-user.sql /docker-entrypoint-initdb.d/
