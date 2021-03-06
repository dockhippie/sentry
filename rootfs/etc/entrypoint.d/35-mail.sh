#!/bin/bash
set -eo pipefail

declare -x SENTRY_MAIL_BACKEND
[[ -z "${SENTRY_MAIL_BACKEND}" ]] && SENTRY_MAIL_BACKEND="smtp"

declare -x SENTRY_MAIL_HOST
[[ -z "${SENTRY_MAIL_HOST}" ]] && SENTRY_MAIL_HOST="localhost"

declare -x SENTRY_MAIL_PORT
[[ -z "${SENTRY_MAIL_PORT}" ]] && SENTRY_MAIL_PORT="25"

declare -x SENTRY_MAIL_USERNAME
[[ -z "${SENTRY_MAIL_USERNAME}" ]] && SENTRY_MAIL_USERNAME=""

declare -x SENTRY_MAIL_PASSWORD
[[ -z "${SENTRY_MAIL_PASSWORD}" ]] && SENTRY_MAIL_PASSWORD=""

declare -x SENTRY_MAIL_USE_TLS
[[ -z "${SENTRY_MAIL_USE_TLS}" ]] && SENTRY_MAIL_USE_TLS="false"

declare -x SENTRY_MAIL_FROM
[[ -z "${SENTRY_MAIL_FROM}" ]] && SENTRY_MAIL_FROM="sentry@localhost"

declare -x SENTRY_MAIL_ENABLE_REPLIES
[[ -z "${SENTRY_MAIL_ENABLE_REPLIES}" ]] && SENTRY_MAIL_ENABLE_REPLIES="false"

declare -x SENTRY_MAIL_REPLY_HOSTNAME
[[ -z "${SENTRY_MAIL_REPLY_HOSTNAME}" ]] && SENTRY_MAIL_REPLY_HOSTNAME=""

declare -x SENTRY_MAIL_MAILGUN_APIKEY
[[ -z "${SENTRY_MAIL_MAILGUN_APIKEY}" ]] && SENTRY_MAIL_MAILGUN_APIKEY=""

true
