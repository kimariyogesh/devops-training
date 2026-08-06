set -euo pipefail

# Method 1 - check exit code manually
if ! ping -c 1 google.com &>/dev/null; then
    echo "ERROR: No network connectivity"
    exit 1
else 
    echo "SUCCESS: Network is up!"
fi


# Method 2 - || operator (run right side if left side fails)
# mkdir /some/dir || { echo "Failed to create directory"; exit 1;}

# # Method 3 - custon error function
# error_exit() {
#     echo "ERROR: $1" >&2
#     # >&2 sends to stderr, not stdout
#     exit 1
# }

# [ -f "/etc/config" ] || error_exit "Config file not found"

