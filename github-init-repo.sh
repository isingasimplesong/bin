!#/usr/bin/env bash
gh repo create dotfiles --public --source=. --remote=origin &&
git push --set-upstream origin main &&
echo "Nouveau dépot github crée."
