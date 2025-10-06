#!/bin/bash

for remote in $(git remote); do
    echo "→ Pushing to $remote..."
    if git push $remote HEAD 2>&1; then
        echo "✓ $remote success"
    else
        echo "✗ $remote failed"
    fi
    echo ""
done
