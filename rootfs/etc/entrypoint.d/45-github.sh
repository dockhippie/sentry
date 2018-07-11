#!/bin/bash
set -eo pipefail

declare -x SENTRY_GITHUB_AUTH
[[ -z "${SENTRY_GITHUB_AUTH}" ]] && SENTRY_GITHUB_AUTH="false"

declare -x SENTRY_GITHUB_CLIENT
[[ -z "${SENTRY_GITHUB_CLIENT}" ]] && SENTRY_GITHUB_CLIENT=""

declare -x SENTRY_GITHUB_SECRET
[[ -z "${SENTRY_GITHUB_SECRET}" ]] && SENTRY_GITHUB_SECRET=""

declare -x SENTRY_GITHUB_VERIFIED_EMAIL
[[ -z "${SENTRY_GITHUB_VERIFIED_EMAIL}" ]] && SENTRY_GITHUB_VERIFIED_EMAIL="true"

true