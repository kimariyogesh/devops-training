#!/bin/bash
LOG="$HOME/developer/devops-training/labs/linux/server.log"
ERROR_COUNT=$(grep -c "error" "$LOG")
echo "=== Log Monitor Report ==="
echo "Total lines: $(wc -l < $LOG)"
echo "Error count: $ERROR_COUNT"
echo "Last error: $(grep 'error' $LOG | tail -1)"
