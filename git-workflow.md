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


How to Access older versions of repositoris "Pulled from GitHub"
Go to     http://githowto.com/getting_old_versions    for more info

First run this command in Git to set up alias 

	git config --global alias.hist 'log --pretty=format:"%h %ad | %s%d [%an]" --graph --date=short'

then run

git hist
Note: Do not forget to define hist in your .gitconfig file? If you do not remember how, review the lesson on aliases.

Check the log data and find the hash for the first commit. You will find it in the last line of the git hist data. Use the code (its first 7 chars are enough) in the command below. After that check the contents of the hello.html file.

RUN:
git checkout <hash>

Note: Many commands depend on the hash values in the repository. Since my hash values will be different from yours, substitute in the appropriate hash value for your repository everytime you see <hash> or <treehash> in the command.


You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by performing another checkout.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -b with the checkout command again. Example:

  git checkout -b new_branch_name


02 Returning to the latest version in the master branch

RUN:
git checkout master

‘master’ is the name of the default branch. By checking out a branch by name, you go to its lastest version.









Tagging Previous Versions in Git
go to 
       http://githowto.com/tagging_versions 
for more help

Tags for previous versions

Let’s tag the version prior to the current version with the name v1-beta. First of all we will checkout the previous version. Instead of looking up the hash, we are going to use the ^ notation indicating “the parent of v1”.

If the v1^ notation causes troubles, try using v1~1, referencing the same version. This notation means “the first version prior to v1”.

RUN:
git checkout v1^
cat hello.html
RUN:
$ git checkout v1^
Note: checking out 'v1^'.

You are in 'detached HEAD' state. You can look around, make experimental
changes and commit them, and you can discard any commits you make in this
state without impacting any branches by performing another checkout.

If you want to create a new branch to retain commits you create, you may
do so (now or later) by using -b with the checkout command again. Example:

  git checkout -b new_branch_name

HEAD is now at 8c32287... Added standard HTML page tags
$ cat hello.html
<html>
  <body>
    <h1>Hello, World!</h1>
  </body>
</html>
This is the version with <html> and <body> tags, but without <head>. Let’s make it’s the v1-beta version.

RUN:
git tag v1-beta
03 Check out by the tag name

Now try to checkout between the two tagged versions.

RUN:
git checkout v1
git checkout v1-beta
RESULT:
$ git checkout v1
Previous HEAD position was 8c32287... Added standard HTML page tags
HEAD is now at fa3c141... Added HTML header
$ git checkout v1-beta
Previous HEAD position was fa3c141... Added HTML header
HEAD is now at 8c32287... Added standard HTML page tags
04 Viewing tags with the tag command

You can see the available  tags using the git tag command.

RUN:
git tag
RESULT:
$ git tag
v1
v1-beta
05 Viewing tags in logs

You can also check for tags in the log.

RUN:
git hist master --all
RESULT:
$ git hist master --all
* fa3c141 2011-03-09 | Added HTML header (v1, master) [Marina Pushkova]
* 8c32287 2011-03-09 | Added standard HTML page tags (HEAD, v1-beta) [Marina Pushkova]
* 43628f7 2011-03-09 | Added h1 tag [Marina Pushkova]
* 911e8c9 2011-03-09 | First Commit [Marina Pushkova]
You can see tags (v1 and v1-beta) listed in the log together with the name of the branch (master). The HEAD shows the commit you checked out (currently v1-beta).