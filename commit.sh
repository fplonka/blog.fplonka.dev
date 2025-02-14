#!/bin/bash
rsync -a --delete "/Users/filip/Library/Mobile Documents/iCloud~md~obsidian/Documents/synced vault/blog.fplonka.dev/" content/

# TODO: compress images maybe
cp "/Users/filip/Library/Mobile Documents/iCloud~md~obsidian/Documents/synced vault/blog.fplonka.dev/images"/* static/

git add -A
git commit -m "Update blog content"
GIT_SSH_COMMAND="ssh -i ~/.ssh/github_script" git push
