#!/bin/bash
set -eo pipefail

declare -x SENTRY_ADMIN_USERNAME
[[ -z "${SENTRY_ADMIN_USERNAME}" ]] && SENTRY_ADMIN_USERNAME="admin"

declare -x SENTRY_ADMIN_PASSWORD
[[ -z "${SENTRY_ADMIN_PASSWORD}" ]] && SENTRY_ADMIN_PASSWORD="admin"

declare -x SENTRY_ADMIN_EMAIL
[[ -z "${SENTRY_ADMIN_EMAIL}" ]] && SENTRY_ADMIN_EMAIL="sentry@localhost"

true
