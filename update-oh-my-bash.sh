#!/bin/bash
set -euo pipefail

cd ~/.oh-my-bash || { echo "Directory ~/.oh-my-bash not found"; exit 1; }

git fetch upstream
git checkout master
git merge upstream/master
git push origin master
git checkout my-adjustments

git rebase master

if ! rebase_output=$(git rebase master 2>&1); then
  cat <<EOF | mail -s "[CRITICAL] oh-my-bash rebase failed" you@example.com
Auto-rebase of 'my-adjustments' onto master failed:

$rebase_output

Please resolve conflicts locally and re-push.
EOF
  exit 1
fi

git push origin my-adjustments --force-with-lease

echo "Oh My Bash branches are now up-to-date!"
