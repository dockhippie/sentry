#!/bin/bash
set -eo pipefail

declare -x SENTRY_DB_TYPE
[[ -z "${SENTRY_DB_TYPE}" ]] && SENTRY_DB_TYPE="postgres"

declare -x SENTRY_DB_TEST_TIMEOUT
[[ -z "${SENTRY_DB_TEST_TIMEOUT}" ]] && SENTRY_DB_TEST_TIMEOUT="60"

declare -x SENTRY_DB_TEST_FAIL
[[ -z "${SENTRY_DB_TEST_FAIL}" ]] && SENTRY_DB_TEST_FAIL="true"

declare -x SENTRY_DB_AUTOCOMMIT
[[ -z "${SENTRY_DB_AUTOCOMMIT}" ]] && SENTRY_DB_AUTOCOMMIT="true"

declare -x SENTRY_DB_ATOMICREQUESTS
[[ -z "${SENTRY_DB_ATOMICREQUESTS}" ]] && SENTRY_DB_ATOMICREQUESTS="false"

case "${SENTRY_DB_TYPE}" in
  "postgres")
    declare -x SENTRY_DB_HOST
    [[ -z "${SENTRY_DB_HOST}" ]] && SENTRY_DB_HOST="postgres"

    declare -x SENTRY_DB_PORT
    [[ -z "${SENTRY_DB_PORT}" ]] && SENTRY_DB_PORT="5432"

    declare -x SENTRY_DB_DATABASE
    [[ -z "${SENTRY_DB_DATABASE}" ]] && SENTRY_DB_DATABASE="sentry"

    declare -x SENTRY_DB_USERNAME
    [[ -z "${SENTRY_DB_USERNAME}" ]] && SENTRY_DB_USERNAME="postgres"

    declare -x SENTRY_DB_PASSWORD
    [[ -z "${SENTRY_DB_PASSWORD}" ]] && SENTRY_DB_PASSWORD=""
    ;;
esac

true
