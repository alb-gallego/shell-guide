#!/usr/bin/env bash
# 2.6 Dates
echo -e "\n2.6 Dates\n"

# Bash can handle date and time values using the `date` command.

echo -e "Examples of using the 'date' command:\n"

# 1. Get the current date and time
current_date=$(date +"%Y-%m-%d")
current_time=$(date +"%H:%M:%S")
echo -e "Current Date: $current_date"
echo -e "Current Time: $current_time"

# 2. Format date output
formatted_date=$(date +"%A, %B %d, %Y")
echo -e "Formatted Date: $formatted_date" # e.g., "Friday, December 28, 2024"

# 3. Convert a specific date to a timestamp
specific_date="2024-12-31"
timestamp=$(date -d "$specific_date" +"%s")
echo -e "Timestamp for $specific_date: $timestamp"

# 4. Convert a timestamp back to a human-readable date
timestamp_to_convert=1735689600
readable_date=$(date -d "@$timestamp_to_convert" +"%Y-%m-%d %H:%M:%S")
echo -e "Readable Date for timestamp $timestamp_to_convert: $readable_date"

# 5. Add or subtract time
# Adding 7 days to the current date
future_date=$(date -d "+7 days" +"%Y-%m-%d")
echo -e "Date 7 days from now: $future_date"

# Subtracting 2 hours from the current time
past_time=$(date -d "-2 hours" +"%H:%M:%S")
echo -e "Time 2 hours ago: $past_time"

# 6. Get the difference between two dates
date1="2024-12-01"
date2="2024-12-28"
difference=$((($(date -d "$date2" +"%s") - $(date -d "$date1" +"%s")) / 86400))
echo -e "Difference between $date1 and $date2: $difference days"

# 7. Validate a date
invalid_date="2024-02-30"
if date -d "$invalid_date" >/dev/null 2>&1; then
    echo -e "$invalid_date is valid"
else
    echo -e "$invalid_date is not valid"
fi

# 8. Get parts of a date
year=$(date +"%Y")
month=$(date +"%m")
day=$(date +"%d")
echo -e "Year: $year, Month: $month, Day: $day"

# 9. Timer example
echo -e "Start timer (3 seconds)..."
sleep 3
echo -e "Timer finished!"

# 10. Time zone conversion
utc_time=$(date -u +"%Y-%m-%d %H:%M:%S")
local_time=$(date +"%Y-%m-%d %H:%M:%S")
echo -e "UTC Time: $utc_time"
echo -e "Local Time: $local_time"

# Summary:
# - Use `date` to manipulate and format dates.
# - Convert between timestamps and human-readable dates.
# - Add or subtract time easily with `date -d`.
