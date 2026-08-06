#!/bin/bash
set -euo pipefail

# ============================================
# log_parser.sh — Production Log Analyser
# Usage: ./log_parser.sh <logfile> [error|warn|info]
# Example: ./log_parser.sh /tmp/disk_alert.log error
# ============================================

LOG_FILE="${1:-1}"
FILTER="${2:-all}"
REPORT_FILE="/tmp/log_report.txt"


# --logger--
log() {
    local LEVEL=$1; shift
    echo "[$(date '+%Y-%m-%d %H:%M:%S')] [$LEVEL] $*"
}

# --error handler--
error_exit() {
    log "ERROR " "$1" >&2
    exit 1
}

