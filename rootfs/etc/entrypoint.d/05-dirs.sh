#!/bin/bash
set -eo pipefail

declare -x SENTRY_BASE_DIR
[[ -z "${SENTRY_BASE_DIR}" ]] && SENTRY_BASE_DIR="/var/lib/sentry"

declare -x SENTRY_FILESTORE_DIR
[[ -z "${SENTRY_FILESTORE_DIR}" ]] && SENTRY_FILESTORE_DIR="${SENTRY_BASE_DIR}/files"

declare -x SENTRY_CACHE_DIR
[[ -z "${SENTRY_CACHE_DIR}" ]] && SENTRY_CACHE_DIR="${SENTRY_BASE_DIR}/cache"

true
