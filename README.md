# Git Notes

## Que. Difference between CVCS and DVCS

### Centralized Version Control System (CVCS)
 #### Architecture:
Uses a central server that contains the complete repository.
Developers check out files from this central repository to work on.

#### Collaboration:
Changes are made to the central repository, which can lead to conflicts if multiple users attempt to modify the same files simultaneously.

#### Offline Work:
Limited; developers need to be connected to the central server to commit changes or access the latest version.

#### History and Versioning:
Version history is stored centrally, which can be a single point of failure.
Examples:
Subversion (SVN), CVS.

### Distributed Version Control System (DVCS)

#### Architecture:
Every developer has a complete copy of the entire repository, including its history, on their local machine.

#### Collaboration:
Supports branching and merging easily, allowing developers to work independently before integrating their changes.

#### Offline Work:
Full functionality offline; developers can commit changes, create branches, and view history without needing a network connection.

#### History and Versioning:
Each local repository contains its own history, reducing the risk of losing data.
Examples:
Git, Mercurial, Bazaar.

## Git Working

![image](https://github.com/user-attachments/assets/ffddb828-91cc-4066-8ea7-026e21d1c09f)

## Git Basic Commands

 - To initialize empty git repository
````
git init
````
- Congfigure Username and EmailID
````
git config --global user.email "testemail@gmail.com"
git config --global user.name "abhi"
git config --global --list
````
- create test file
````
touch index.html
````
- Add newly created file to staging area
````
git add index.html
````
- Verify file added to staging area or not
````
git status
````
- Commit file to local repository
````
git commit -m "message"
````
- verify commmit
````
git log
````
- Push using remote repo
````
git remote add origin https://github.com/abhipraydhoble/Devops-B-fourtyone.git
````
- Verify
````
git remote -v
````
- Note: Make sure to generate github token before pushing to remote
- go to github profile ->settings->developer setting->personal access token-> token classic->generate new

![image](https://github.com/user-attachments/assets/49c30191-b202-4071-b58d-97ac66a93d55)

- copy token to somewhere for future use

- Push to Remote repository
````
git push origin master
````
- it will ask for username and token

### Git Clone Using HTTPs and SSH Method:
#### 1. HTTPS:
````
git clone https://github.com/abhipraydhoble/gitdayone.git
````
![image](https://github.com/user-attachments/assets/f2cd38f3-997c-493d-9cac-4e4860c3954d)

#### 2. SSH
````
git clone git@github.com:abhipraydhoble/gitdayone.git
````
![image](https://github.com/user-attachments/assets/1a92c161-d9ad-43fb-a5e0-4274f46b6afd)

### Branching Strategy:

![image](https://github.com/user-attachments/assets/c3b36324-9def-462f-af4e-6162586b3cf9)

- check current branch
````
git branch
````
- create new branch
````
git branch feature
````
- switch to new branch
````
git checkout feature
````
- push changes to remote
````
git push origin feature
````
- create and switch to branch
````
git checkout -b test
````
- Merge test branch into main branch
````
git checkout main
git merge test
````
- Apply commits of one branch to other
````
git rebase <branchname>
````
- Cherry-Pick: Apply single commmit from one branch to other
````
git log --oneline    #copy commmit id
git checkout <branchname>
git cherry-pick <commmit-id>
````
- Pull: merge remote changes to local repo
````
git pull https://github.com/abhipraydhoble/devops-b41.git
````
- Fetch : Update changes from remote to local
````
git fetch https://github.com/abhipraydhoble/devops-b41.git
````
- Stash: save work
````
git add <filename>
git stash
git stash list
git stash apply
````
- Restore: staging to working dir
````
git restore --staged <filename>
````

