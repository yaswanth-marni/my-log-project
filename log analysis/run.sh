
#!/bin/bash

# Script to add, commit, and push all changes to git

echo "Enter commit message:"
read msg
git add .
git commit -m "$msg"
git push
