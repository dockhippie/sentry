#!/bin/bash
set -eo pipefail

declare -x SENTRY_CONF
[[ -z "${SENTRY_CONF}" ]] && SENTRY_CONF="/etc/sentry"

declare -x SENTRY_DEBUG
[[ -z "${SENTRY_DEBUG}" ]] && SENTRY_DEBUG="false"

declare -x SENTRY_ENVIRONMENT
[[ -z "${SENTRY_ENVIRONMENT}" ]] && SENTRY_ENVIRONMENT="production"

declare -x SENTRY_PUBLIC
[[ -z "${SENTRY_PUBLIC}" ]] && SENTRY_PUBLIC="false"

declare -x SENTRY_USE_BIG_INTS
[[ -z "${SENTRY_USE_BIG_INTS}" ]] && SENTRY_USE_BIG_INTS="true"

declare -x SENTRY_SINGLE_ORGANIZATION
[[ -z "${SENTRY_SINGLE_ORGANIZATION}" ]] && SENTRY_SINGLE_ORGANIZATION="true"

declare -x SENTRY_WEB_WORKERS
[[ -z "${SENTRY_WEB_WORKERS}" ]] && SENTRY_WEB_WORKERS="3"

declare -x SENTRY_USE_SSL
[[ -z "${SENTRY_USE_SSL}" ]] && SENTRY_USE_SSL="false"

declare -x SENTRY_FORCE_SCRIPT_NAME
[[ -z "${SENTRY_FORCE_SCRIPT_NAME}" ]] && SENTRY_FORCE_SCRIPT_NAME="/"

declare -x SENTRY_ADMIN_EMAIL
[[ -z "${SENTRY_ADMIN_EMAIL}" ]] && SENTRY_ADMIN_EMAIL=""

declare -x SENTRY_SECRET_KEY
[[ -z "${SENTRY_SECRET_KEY}" ]] && SENTRY_SECRET_KEY="$(sentry config generate-secret-key)"

declare -x SENTRY_URL_PREFIX
[[ -z "${SENTRY_URL_PREFIX}" ]] && SENTRY_URL_PREFIX="http://sentry:9000"

declare -x SENTRY_ALLOW_ORIGIN
[[ -z "${SENTRY_ALLOW_ORIGIN}" ]] && SENTRY_ALLOW_ORIGIN=""

declare -x SENTRY_FEATURES_AUTH_REGISTER
[[ -z "${SENTRY_FEATURES_AUTH_REGISTER}" ]] && SENTRY_FEATURES_AUTH_REGISTER="true"

true
