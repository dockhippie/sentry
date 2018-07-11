#!/bin/bash
set -eo pipefail

declare -x SENTRY_CACHE_TYPE
[[ -z "${SENTRY_CACHE_TYPE}" ]] && SENTRY_CACHE_TYPE="filebased"

declare -x SENTRY_CACHE_HOST
[[ -z "${SENTRY_CACHE_HOST}" ]] && SENTRY_CACHE_HOST=""

true
