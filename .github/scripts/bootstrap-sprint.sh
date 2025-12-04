#!/bin/bash

# Ensure GitHub CLI is installed
if ! command -v gh &> /dev/null
then
    echo "GitHub CLI not installed. Install it first."
    exit
fi

REPO=$1

if [ -z "$REPO" ]; then
  echo "Usage: ./bootstrap-sprint.sh owner/repo"
  exit 1
fi

echo "🎯 Creating Sprint Board for $REPO..."

# Create project
PROJECT_ID=$(gh project create --owner ${REPO%/*} --title "Development Board" --format json | jq -r '.id')

# Add columns
gh project item-create-repo --project-id $PROJECT_ID --owner ${REPO%/*} --repo ${REPO#*/}

gh project field-create --project-id "$PROJECT_ID" --name "Status" --data-type "single_select" --options "Backlog,Ready,In Progress,Review,Done"

echo "✨ Sprint Board created successfully."
echo "Project ID: $PROJECT_ID"

# Usage
# chmod +x scripts/bootstrap-sprint.sh
# ./scripts/bootstrap-sprint.sh apps3000/<repo-name>