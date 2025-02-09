#!/bin/bash
rsync -a --delete "/Users/filip/Library/Mobile Documents/iCloud~md~obsidian/Documents/synced vault/blog.fplonka.dev/" content/
git add -A
git commit -m "Updating blog content"
GIT_SSH_COMMAND="ssh -i ~/.ssh/github_script" git push
