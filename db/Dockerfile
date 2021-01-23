FROM mysql:8.0.22
#FROM mysql:5.7.33

COPY ./create_schema.sql /docker-entrypoint-initdb.d/

CMD ["--default-authentication-plugin=mysql_native_password", "--character-set-server=utf8", "--collation-server=utf8_unicode_ci", "--skip-character-set-client-handshake"]
