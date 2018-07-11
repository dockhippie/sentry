#!/bin/bash
set -eo pipefail

declare -x SENTRY_REDIS_HOST
[[ -z "${SENTRY_REDIS_HOST}" ]] && SENTRY_REDIS_HOST="redis"

declare -x SENTRY_REDIS_PORT
[[ -z "${SENTRY_REDIS_PORT}" ]] && SENTRY_REDIS_PORT="6379"

declare -x SENTRY_REDIS_PASSWORD
[[ -z "${SENTRY_REDIS_PASSWORD}" ]] && SENTRY_REDIS_PASSWORD=""

declare -x SENTRY_REDIS_DB
[[ -z "${SENTRY_REDIS_DB}" ]] && SENTRY_REDIS_DB="1"

declare -x SENTRY_REDIS_TEST_TIMEOUT
[[ -z "${SENTRY_REDIS_TEST_TIMEOUT}" ]] && SENTRY_REDIS_TEST_TIMEOUT="60"

declare -x SENTRY_REDIS_TEST_FAIL
[[ -z "${SENTRY_REDIS_TEST_FAIL}" ]] && SENTRY_REDIS_TEST_FAIL="true"

true
