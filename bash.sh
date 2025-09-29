#!/usr/bin/env bash
# ------------------------------------------------------------
# Script Name : month_days.sh
# Purpose     : Show days in the current month and leap year info
# Usage       : ./month_days.sh
# ------------------------------------------------------------

# Get current month and year
MONTH=$(date +%m)
YEAR=$(date +%Y)

echo "Current Month : $MONTH"
echo "Current Year  : $YEAR"

if [[ $MONTH -eq 1 || $MONTH -eq 3 || $MONTH -eq 5 || $MONTH -eq 7 || $MONTH -eq 8 || $MONTH -eq 10 || $MONTH -eq 12 ]]; then
    echo "This month has 31 days."
elif [[ $MONTH -eq 4 || $MONTH -eq 6 || $MONTH -eq 9 || $MONTH -eq 11 ]]; then
    echo "This month has 30 days."
elif [[ $MONTH -eq 2 ]]; then
    # Leap year check
    if (( (YEAR % 400 == 0) || (YEAR % 4 == 0 && YEAR % 100 != 0) )); then
        echo "This is February in a leap year, it has 29 days."
    else
        echo "This is February in a non-leap year, it has 28 days."
    fi
else
    echo "Error: Unknown month."
fi
