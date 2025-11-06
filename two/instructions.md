# Clone a dummy repo
git clone https://github.com/CogWorksBWSI/GitPracticeRepo.git
cd GitPracticeRepo

# Initialize git if not present
git init

# Stage and commit a change
echo "Test change" >> testfile.txt
git add testfile.txt
git commit -m "Added testfile.txt"

# Add remote (if you fork this repo)
git remote add origin https://github.com/<your_username>/GitPracticeRepo.git

# Push to your remote fork
git push -u origin main

# Fetch changes from remote
git fetch origin
git pull origin main

# Tagging
git tag v1.0
git tag -a v2.0 -m "Version 2.0"
git tag -d v1.0

# Reverting changes
git reset --hard HEAD~1
git revert <commit_sha>
