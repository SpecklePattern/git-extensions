# Simple git extensions

This project provides the absolute minimal scripts to work with git on command line. The aim is to simplify the git commands for simple git projects.

## Installing

Requires sudo privileges.

Create a new folder (folder name is not important) and execute the following commands 

```
git clone https://github.com/SpecklePattern/git-extensions
cd git-extensions
chmod 755 install
sudo ./install
```

This will make all of the extension commands (see Command reference) available.

### 'git' command is not working

To use git, you need to install the packages this is dependent on the platform (operating system) you are using.

* [Windows](https://www.google.com/search?q=Windows+install+git)
* [Linux](https://www.google.com/search?q=linux+install+git)
* [Mac](https://www.google.com/search?q=Mac+install+git)

# Development

This package is made and tested on CentOS8, but git commands are rather universal. Developers are encouraged to make system-based changes when necessary.

All the script files should be named starting with 'git-' for compatibility.

# Command reference
## git-author
```
git-author "Firstname Lastname" "firstname.lastname@example.com"
```
## git-commit-all
```
git-commit-all "Commit message here"
```
## git-push
git-push <branch name> <origin name>
```
git-push master
git-push master origin
```
