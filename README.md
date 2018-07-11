# Sentry

[![](https://images.microbadger.com/badges/image/webhippie/sentry.svg)](https://microbadger.com/images/webhippie/sentry "Get your own image badge on microbadger.com")

These are docker images for [Sentry](https://sentry.io) running on an [Python container](https://registry.hub.docker.com/u/webhippie/python/).


## Versions

To get an overview about the available versions please take a look at the [GitHub branches](https://github.com/dockhippie/sentry/branches/all) or our [Docker Hub tags](https://hub.docker.com/r/webhippie/sentry/tags/), these lists are always up to date.


## Volumes

* /var/lib/sentry


## Ports

* 9000
* 1025


## Available environment variables

```bash
SENTRY_BASE_DIR /var/lib/sentry
SENTRY_FILESTORE_DIR ${SENTRY_BASE_DIR}/files
SENTRY_CACHE_DIR ${SENTRY_BASE_DIR}/cache
SENTRY_DB_TYPE postgres
SENTRY_DB_TEST_TIMEOUT 60
SENTRY_DB_TEST_FAIL true
SENTRY_DB_AUTOCOMMIT true
SENTRY_DB_ATOMICREQUESTS false
SENTRY_DB_HOST postgres
SENTRY_DB_PORT 5432
SENTRY_DB_DATABASE sentry
SENTRY_DB_USERNAME postgres
SENTRY_DB_PASSWORD
SENTRY_CONF /etc/sentry
SENTRY_DEBUG false
SENTRY_ENVIRONMENT production
SENTRY_PUBLIC false
SENTRY_USE_BIG_INTS true
SENTRY_SINGLE_ORGANIZATION true
SENTRY_WEB_WORKERS 3
SENTRY_USE_SSL false
SENTRY_FORCE_SCRIPT_NAME /
SENTRY_ADMIN_EMAIL
SENTRY_SECRET_KEY # generated on every start
SENTRY_URL_PREFIX http://sentry:9000
SENTRY_ALLOW_ORIGIN
SENTRY_FEATURES_AUTH_REGISTER true
SENTRY_BROKER_TYPE redis
SENTRY_BROKER_HOST redis
SENTRY_BROKER_PORT 6379
SENTRY_BROKER_USERNAME
SENTRY_BROKER_PASSWORD
SENTRY_BROKER_DB 0
SENTRY_BROKER_VHOST
SENTRY_BROKER_TEST_TIMEOUT 60
SENTRY_BROKER_TEST_FAIL true
SENTRY_REDIS_HOST redis
SENTRY_REDIS_PORT 6379
SENTRY_REDIS_PASSWORD
SENTRY_REDIS_DB 1
SENTRY_REDIS_TEST_TIMEOUT 60
SENTRY_REDIS_TEST_FAIL true
SENTRY_CACHE_TYPE filebased
SENTRY_CACHE_HOST
SENTRY_MAIL_BACKEND smtp
SENTRY_MAIL_HOST localhost
SENTRY_MAIL_PORT 25
SENTRY_MAIL_USERNAME
SENTRY_MAIL_PASSWORD
SENTRY_MAIL_USE_TLS false
SENTRY_MAIL_FROM sentry@localhost
SENTRY_MAIL_ENABLE_REPLIES false
SENTRY_MAIL_REPLY_HOSTNAME
SENTRY_MAIL_MAILGUN_APIKEY
SENTRY_FILESTORE_BACKEND filesystem
SENTRY_FILESTORE_BUCKET_NAME sentry
SENTRY_FILESTORE_ACCESS_KEY
SENTRY_FILESTORE_SECRET_KEY
SENTRY_GITHUB_AUTH false
SENTRY_GITHUB_CLIENT
SENTRY_GITHUB_SECRET
SENTRY_GITHUB_VERIFIED_EMAIL true
SENTRY_ADMIN_USERNAME admin
SENTRY_ADMIN_PASSWORD admin
SENTRY_ADMIN_EMAIL sentry@localhost
```


## Inherited environment variables

* [webhippie/python](https://github.com/dockhippie/python#available-environment-variables)
* [webhippie/alpine](https://github.com/dockhippie/alpine#available-environment-variables)


## Contributing

Fork -> Patch -> Push -> Pull Request


## Authors

* [Thomas Boerger](https://github.com/tboerger)


## License

MIT


## Copyright

```
Copyright (c) 2018 Thomas Boerger <http://www.webhippie.de>
```
