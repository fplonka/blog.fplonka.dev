#!/bin/bash
rm -rf content/*

cp -R "/Users/filip/Library/Mobile Documents/iCloud~md~obsidian/Documents/synced vault/blog.fplonka.dev"/. ./content

# 3. Rewrite image links in all .md files:
#    from ![](images/whatever.png) to ![](/images/whatever.png)
find content -type f -name "*.md" -exec \
  sed -i '' 's/!\[](\(images\/[^)]*\))/!\[](\/\1)/g' {} +

git add -A
git commit -m "Update blog content"
GIT_SSH_COMMAND="ssh -i ~/.ssh/github_script" git push
