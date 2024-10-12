#!/usr/bin/env bash
project_name=$(basename "$(pwd)")
git init &&
git add . &&
git commit -m "initial commit" &&
gh repo create "$project_name" --private --source=. --remote=origin &&
git push --set-upstream origin main &&
echo "Nouveau dépot github créé."
