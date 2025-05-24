#!/bin/bash

# === Configuration ===
DEFAULT_BRANCH="main"
TEMP_FILE="trigger.txt"
CO_AUTHOR_NAME="Jackbot"
CO_AUTHOR_EMAIL="radiliadi2@gmail.com"

# === Create a dummy file and commit ===
echo "triggered at $(date)" > $TEMP_FILE
git add $TEMP_FILE

git commit -m "chore: trigger YOLO & Pair Extraordinaire

Co-authored-by: $CO_AUTHOR_NAME <$CO_AUTHOR_EMAIL>"

# === Force push to main (YOLO achievement) ===
git push origin +$DEFAULT_BRANCH

# === Cleanup (optional) ===
# rm $TEMP_FILE
