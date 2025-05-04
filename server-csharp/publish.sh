#!/bin/bash

set -euo pipefail

echo "🚀 Starting publish script..."

# Check if spacetime CLI is available
if ! command -v spacetime &> /dev/null; then
  echo "❌ spacetime CLI not found. Please install it or ensure it's in your PATH."
  exit 1
fi

echo "✅ spacetime CLI found. Proceeding to publish..."

# Actual publish command
spacetime publish -s local blackholio --delete-data -y

echo "✅ Publish completed successfully."

# Optional: Pause at end so Git Bash doesn't auto-close
read -p "Press enter to exit..."