# Git first experiment

## What we going to be doing (viva questions related to this exp)
- why git
- staging area in git
- local and remote repository
- pipeline for a change in git
- commands


### Steps
1. Goto an empty directory and run `git init`, this will initialize the local git repository.
2. Make a new file and do something in it.
3. Run `git add .`, this will tell git to start tracking your file (now git actually does its thing)
4. Make some more changes
5. Now git knows that something has changed, run `git status` to know more about it
6. Run `git add .` to add the changes, this command adds it to the staging are
7. Run `git commit -m <msg>`, this will commit your changes to the local repository
8. Run `git log` to know more about your commit history

#### Notes
- If you want to remove the file from the staging area, `git rm <file>`
- Show file changes, `git diff`