#!/bin/bash
# ─────────────────────────────────────────────
# GitHub setup script for javascript-testing
# Run this from your Terminal:
#   cd ~/javascript-testing && bash github-setup.sh
# ─────────────────────────────────────────────

set -e

REPO_NAME="javascript-testing"
GITHUB_USER="Eddiefos"   # your GitHub username

echo "🧹 Cleaning up any existing .git folder..."
rm -rf .git

echo "📁 Initialising git repo..."
git init
git branch -m main

echo "📝 Staging files..."
git add .
git commit -m "Initial commit — Odin Project dev hub"

echo ""
echo "🔐 Logging in to GitHub (a browser window will open)..."
gh auth login

echo ""
echo "🚀 Creating GitHub repo and pushing..."
gh repo create "$REPO_NAME" --public --source=. --remote=origin --push

echo ""
echo "🌐 Enabling GitHub Pages..."
gh api repos/$GITHUB_USER/$REPO_NAME/pages \
  --method POST \
  -f source[branch]=main \
  -f source[path]="/"

echo ""
echo "✅ Done! Your site will be live in ~60 seconds at:"
echo "   https://$GITHUB_USER.github.io/$REPO_NAME/"
