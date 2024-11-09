# ${\color {blue} \textbf {Git}}$

### ${\color {orange} \textbf {What is Git?}}$
Git is a distributed version control system that enables multiple developers to collaborate on projects efficiently.

### ${\color {orange} \textbf {Key Features:}}$

#### 1.Distributed Architecture:

- Every user has a full copy of the repository, including its entire history, on their local machine. This allows for offline work and makes collaboration easier.
  
#### 2.Branching and Merging:

- Git allows users to create branches to develop features or fix bugs independently. Merging these branches back into the main codebase is straightforward and efficient.

#### 3.Performance:

- Git is designed to handle large projects efficiently. Operations like commits, diffs, and merges are optimized for speed.

#### 4.Data Integrity:

- Git uses a SHA-1 hashing algorithm to ensure the integrity of data. Every change is tracked, and the history is maintained in a way that prevents data corruption.

#### 5.Staging Area:

- Git features a staging area where changes can be prepared before they are committed to the repository. This allows for more control over what gets included in a commit.

#### 6.Collaboration:

- Git supports workflows that enable multiple developers to work on the same project simultaneously. Changes can be shared via remote repositories, often hosted on platforms like GitHub, GitLab, or Bitbucket.

### ${\color {orange} \textbf {Difference between CVCS and DVCS?}}$

![image](https://github.com/user-attachments/assets/feaa2394-384a-439e-a0e4-2c9421c1c73e)


### ${\color {orange} \textbf {Git Working}}$

![image](https://github.com/user-attachments/assets/ffddb828-91cc-4066-8ea7-026e21d1c09f)

### ${\color {orange} \textbf {Git Basic Commands:}}$

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

### ${\color {orange} \textbf {Git Clone Using HTTPs and SSH Method:}}$
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

### ${\color {orange} \textbf {Branching Strategy:}}$

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
### ${\color {orange} \textbf {Difference between git merge and git rebase?}}$

![image](https://github.com/user-attachments/assets/7f770649-1a8b-4306-af4e-be0ef68ac9ea)

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
### ${\color {orange} \textbf {Difference between git pull and git fetch?}}$

![image](https://github.com/user-attachments/assets/35db811d-fbcc-4044-81aa-8f6091e0c976)

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

