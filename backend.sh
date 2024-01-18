#!/bin/bash

USER_NAME="hamza1100"
TOKEN="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"


# commands to create folder and file and add content to the file
mkdir backend
touch backend.py
echo 'I am learning python Django along with AWS & Docker' > backend.py

# commands to stage, commit, and push the code the remote repository
git add .
git commit -m "create file and folder"

git push https://${USER_NAME}:${TOKEN}@github.com/${USER_NAME}/Circle-W-AdvanceITSkillProgram-Class-5-Assignments.git master