# Simple git tools to start working with git

This project provides the absolute minimal scripts to work with git on command line. The aim is to simplify the git commands for simple git projects.

Especially usefull for single person small repositories and testing.

## Requirements

* Git installed on your machine
* A git account (GitHub, Bitbucket, etc.)
* Linux **or** Windows

# Installing

Requires administration privileges.

Create a new folder (folder name is not important) and execute the following commands.

## On Linux

```
git clone https://github.com/SpecklePattern/git-simple
cd git-simple/linux
chmod 755 install
sudo ./install
```

## On Windows

In file explorer: In any folder. Right-click and select "Git Bash Here". Then run 

```
git clone https://github.com/SpecklePattern/git-simple
```

Now, open the folder in file explorer.

* Go to folder git-simple/windows
* Right-click on the *install-git-simple.bat* and
* select "Run as administrator"

## On Mac (unsupported)

[Help wanted]

# Recommended to do after an install

After install it is recommended to run

```
git-author "My name" "myemail@example.com"
```

with your own information. This sets the git enviroment author to correct one.

# Issues and solving them

## Verify installation

Run in Linux terminal **or** Windows Git Bash

```
git-simple
```

## 'git' command is not working

To use git, you need to install the packages this is dependent on the platform (operating system) you are using.

* [Windows](https://www.google.com/search?q=Windows+install+git)
* [Linux](https://www.google.com/search?q=linux+install+git)
* [Mac](https://www.google.com/search?q=Mac+install+git)

## Authorization fails during git-push command

You need to provide correct username and password. Remember, you are not using your email as username.

# A real world example

Here we will cover the basic usage of these simple extensions on a real git repository.

Simplest way to create a reposity is through the web service.

## Using Github account

1. **GitHub web page** : Go to your account
2. **GitHub web page** : On the frontpage you see the "Repositories" tab. Click on that.
3. **GitHub web page** : Then you should see the green "New" button. This will allow you to create a new git repository
4. **GitHub web page** : Fill the Repository Name. Use name you desire for testing purposes
5. **GitHub web page** : Click "Create Repository"
6. **Your computer** : Create a new folder and run the following command

```
git-new URL
```
 
The URL is your new repository url. Formatted similarly to https://github.com/SpecklePattern/git-simple

7. **Your computer** :After this, you can, for example, insert a new file inside your test folder
	* It is important to note, that git tracks changes. So, if you are not changing anything in your folder, git is not doing anything. Go ahead, try putting a random cat picture inside your folder and then continue these instructions.

8. **Your computer** : After changing or adding any files in your folder you can call commands

```
git-commit "My comment"
git-push master
```

9. **GitHub web page** : The git-push command requires authentication, but after this, you should see your file changes in GitHub web page

Congrats! You are now tracking changes in your computer folder! For more advanced usage of git, there are numerous tutorials for that.

# Development

This package is made and tested on CentOS8, but git commands are rather universal. Developers are encouraged to make system-based changes when necessary.

* All the script files should be named starting with 'git-' for compatibility.
* All git-* scripts in linux/ folder should include option '--README' as a special case option for generating the README

# Command reference
## git-author
Set git author name and email. Generally only required once after the git is installed.
```
git-author "Firstname Lastname" "firstname.lastname@example.com"
```
## git-commit
Automatically adds and commits all files in the repository.
```
git-commit "Commit message here"
```
## git-new
Create new repository using single command.
```
git-new https://github.com/USERNAME/REPOSITORYNAME
```
## git-push
Push commands using branch and origin names
```
git-push master
git-push master origin
```
## git-simple
Tests if the installation was a success.
```
git-simple
```
## git-usercache
Enables user name and password saving so that one doesn't need to input username and password on each push.
Default timeout is 2 hours (7200 seconds), but user can define own timeout.
Following examples are for 2 minutes (120 seconds) and 1 hour (3600 seconds) saving times.
```
git-usercache 120
git-usercache 3600
```
After the set time, user needs to reinput their credentials.
