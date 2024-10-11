#!/usr/bin/env bash
project_name=$(basename "$(pwd)")
gh repo create "$project_name" --public --source=. --remote=origin &&
git push --set-upstream origin main &&
echo "Nouveau dépot github crée."
