Working with git protocol:
==========================

1. get to the working directory and pull down changes from the origin repository when starting work

	
		$ git pull

If you lost the directory from last time or are getting merge errors start a fresh directory by cloning to make a new directory. You can then add any new files that you were working on. 

		$ git clone https://github.com/mbrenn3/Volvox-C-section.git

2. Start working. Save and commit changes often.

	
		$ git commit -am "concise commit comment"

3. To add new files that you want to track.

	
		$ git add newfile.txt

4. push changes to the server periodically, at least at the end of the day. 

	
		$ git push origin branch-name

If your push was rejected someone else has already pushed changes pull down to merge your work, and push again

		$ git pull
		$ git push origin branch-name

The following is a more detailed reference for using git and git hub: 

Git and Github
===

[This](http://git-scm.com/book/en/Getting-Started) book is the best. 

Install git: [http://git-scm.com/downloads](http://git-scm.com/downloads)

Initial set-up
-------
###First set up your identity


Start a new folder and cd to it, then check settings:

To set up identity: 
	
	$ git config --global user.name "John Doe"
	$ git config --global user.email johndoe@example.com
	
To list identity and settings
	
	$ git config --list
	
###Initialize a repository, add a readme, a remote, and push to github

make a new directory and enter it, and make a file

    $ mkdir test
    $ cd test
    $ touch readme.txt

initialize git

    $ git init
    
check the status of your git repository

    $ git status
    
You should see your readme.txt as an untracked file. Add files that you want to track with

    $ git add <filename.file>

Check status again. Now you should see your file as tracked.

    
Now we will commit, this will take the first snapshot of all tracked files.

    $ git commit -am "initial commit"
    
(The -a flag skips the staging step which is not important right now and the -m flag allows you to add your commit comment inline with the command rather than opening an editor.)

Now open the text file that you are tracking and enter some info and save it. Now run git status. You should see the file as modified. Now commit again, and check the status again.

    $ git commit -am "second commit"
    
You should see

> On branch master

> nothing to commit (working directory clean)

Now to look back and see what you did, run 

    $ git log
    
You should see two entries listing the commit hash, which will be how you refer to the commit internally, as well as yourself as the author, the date and you commit comment. 

Now lets make a mirror of this repo on github. Login to git hub in your browser and make a new repository. Name it the same as the directory your working in as your computer, test. Don't initialize with a readme. Now go back to the terminal and add a remote

    $ git remote add origin https://github.com/<username>/<directory>.git
    
Now we are going to push our repository onto the cloud (Github).

    $ git push -u origin master
    
This is telling git to copy changes to origin (the Github repository) from master (the local repository your working with). The -u flag just tells git to remember parameters so next time you can just run git push. 

Now so you can see that everything is working go to the repository in Github. You should see your readme.txt in your test repository. Now edit it and commit changes in Github and go back to the terminal.

    $ git pull
    
You should see git download the changes you made and now when you look at the file on your computer it will include the edits you made through Github. Yay! also when you run git log you will see your edit and commit that you made.

Remotes
---

###Clone an Existing Repository: 

	$ git clone https://github.com/mbrenn3/3D-printed-oxygen-devices.git

This will make a directory named 3D-printed-oxygen-devices with the project file inside it.

###When you are done working push back to the origin (Github)

	$ git push -u origin master

###Before you start working later pull changes to the local repo

	$ git pull origin
	
Branching
---------
Until now  all work has been done in the Master branch. Lets try to keep the master branch as a latest working/final version, and do all work in branches. When your work in a branch is ready to present we can merge it to the master, don't worry it's very easy. [This](http://git-scm.com/book/en/Git-Branching-What-a-Branch-Is) page is really helpful

To create a branch

    $ git branch new

Now you have created a branch named "new" that is an exact copy of the branch you are in now. You can move to and start working in that branch by moving the 'HEAD'.

to move the HEAD to branch

    $ git checkout new

You can now work here and make commits in this branch without affecting the master branch (also to clarify, master is just the default name git gives the initial branch of a project). Before you go back and checkout another branch you should always commit your changes and leave with a clean working directory. 
    
To move the HEAD back to master

    $ git checkout master

Now you can merge the branch that you are working on 'new' into master with

    $ git merge new

Now the master branch will have all the changes and updates that you worked on in the new branch. If you are done working on that topic you can delete the branch with

    $ git branch -d new

You can also quickly make a new branch and switch the HEAD to it to start working
    
    $ git checkout -b newer


Basic Commands:
You can check your working dirctory by typing " pwd " in to you Git Bash window.

pwd 


To change the directory on your computer type" cd "

cd 

then list the path to the folder

ex : 
cd Documents/ ...

You can list the directory contects by typing 
 
ls