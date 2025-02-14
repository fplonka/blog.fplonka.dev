#!/bin/bash

# 1. Clear old content
rm -rf content/*

# 2. Copy from Obsidian into 'content/'
cp -R "/Users/filip/Library/Mobile Documents/iCloud~md~obsidian/Documents/synced vault/blog.fplonka.dev"/. ./content

# 3. Also copy images from Obsidian into Hugo's assets/images/ if you want them processed
rm -rf assets/images/*
mkdir -p assets/images
cp -R "/Users/filip/Library/Mobile Documents/iCloud~md~obsidian/Documents/synced vault/blog.fplonka.dev/images/." assets/images

# 4. Git commit & push
git add -A
git commit -m "Update blog content"
GIT_SSH_COMMAND="ssh -i ~/.ssh/github_script" git push

