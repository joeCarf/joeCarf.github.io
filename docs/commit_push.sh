#!/bin/bash

# 检查是否提供了 commit message
if [ -z "$1" ]; then
  echo "Error: Commit message is required."
  echo "Usage: ./git_script.sh 'Your commit message'"
  exit 1
fi

# 获取 commit message
commit_message="$1"

# 添加所有更改到暂存区
echo "Adding changes to staging area..."
git add .

# 提交更改
echo "Committing changes with message: '$commit_message'"
git commit -m "$commit_message"

# 推送到远程仓库
echo "Pushing changes to the remote repository..."
git push

# 成功提示
if [ $? -eq 0 ]; then
  echo "Changes have been successfully pushed to the remote repository."
else
  echo "An error occurred during git push."
  exit 1
fi

