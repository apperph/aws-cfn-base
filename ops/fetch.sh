#!/bin/bash
set -eauo pipefail
START_COMMIT=$(git rev-list main|tail -n 1)
git checkout -q $START_COMMIT
git checkout --orphan temp_branch
git commit -m "Set initial project; Initial Commit"
git rebase --onto temp_branch $START_COMMIT main
git branch -D temp_branch
git submodule update --remote cfn-base-templates