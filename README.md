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

-To initialize empty git repository

````
git init
````


