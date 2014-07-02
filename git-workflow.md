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









Tagging Git
go to
 http://git-scm.com/book/en/Git-Basics-Tagging
for more help


2.6 Git Basics - Tagging
Tagging
Like most VCSs, Git has the ability to tag specific points in history as being important. Generally, people use this functionality to mark release points (v1.0, and so on). In this section, you’ll learn how to list the available tags, how to create new tags, and what the different types of tags are.

Listing Your Tags
Listing the available tags in Git is straightforward. Just type git tag:

$ git tag
v0.1
v1.3
This command lists the tags in alphabetical order; the order in which they appear has no real importance.

You can also search for tags with a particular pattern. The Git source repo, for instance, contains more than 240 tags. If you’re only interested in looking at the 1.4.2 series, you can run this:

$ git tag -l 'v1.4.2.*'
v1.4.2.1
v1.4.2.2
v1.4.2.3
v1.4.2.4
Creating Tags
Git uses two main types of tags: lightweight and annotated. A lightweight tag is very much like a branch that doesn’t change — it’s just a pointer to a specific commit. Annotated tags, however, are stored as full objects in the Git database. They’re checksummed; contain the tagger name, e-mail, and date; have a tagging message; and can be signed and verified with GNU Privacy Guard (GPG). It’s generally recommended that you create annotated tags so you can have all this information; but if you want a temporary tag or for some reason don’t want to keep the other information, lightweight tags are available too.

Annotated Tags
Creating an annotated tag in Git is simple. The easiest way is to specify -a when you run the tag command:

$ git tag -a v1.4 -m 'my version 1.4'
$ git tag
v0.1
v1.3
v1.4
The -m specifies a tagging message, which is stored with the tag. If you don’t specify a message for an annotated tag, Git launches your editor so you can type it in.

You can see the tag data along with the commit that was tagged by using the git show command:

$ git show v1.4
tag v1.4
Tagger: Scott Chacon <schacon@gee-mail.com>
Date:   Mon Feb 9 14:45:11 2009 -0800

my version 1.4

commit 15027957951b64cf874c3557a0f3547bd83b3ff6
Merge: 4a447f7... a6b4c97...
Author: Scott Chacon <schacon@gee-mail.com>
Date:   Sun Feb 8 19:02:46 2009 -0800

    Merge branch 'experiment'
That shows the tagger information, the date the commit was tagged, and the annotation message before showing the commit information.

Signed Tags
You can also sign your tags with GPG, assuming you have a private key. All you have to do is use -s instead of -a:

$ git tag -s v1.5 -m 'my signed 1.5 tag'
You need a passphrase to unlock the secret key for
user: "Scott Chacon <schacon@gee-mail.com>"
1024-bit DSA key, ID F721C45A, created 2009-02-09
If you run git show on that tag, you can see your GPG signature attached to it:

$ git show v1.5
tag v1.5
Tagger: Scott Chacon <schacon@gee-mail.com>
Date:   Mon Feb 9 15:22:20 2009 -0800

my signed 1.5 tag
-----BEGIN PGP SIGNATURE-----
Version: GnuPG v1.4.8 (Darwin)

iEYEABECAAYFAkmQurIACgkQON3DxfchxFr5cACeIMN+ZxLKggJQf0QYiQBwgySN
Ki0An2JeAVUCAiJ7Ox6ZEtK+NvZAj82/
=WryJ
-----END PGP SIGNATURE-----
commit 15027957951b64cf874c3557a0f3547bd83b3ff6
Merge: 4a447f7... a6b4c97...
Author: Scott Chacon <schacon@gee-mail.com>
Date:   Sun Feb 8 19:02:46 2009 -0800

    Merge branch 'experiment'
A bit later, you’ll learn how to verify signed tags.

Lightweight Tags
Another way to tag commits is with a lightweight tag. This is basically the commit checksum stored in a file — no other information is kept. To create a lightweight tag, don’t supply the -a, -s, or -m option:

$ git tag v1.4-lw
$ git tag
v0.1
v1.3
v1.4
v1.4-lw
v1.5
This time, if you run git show on the tag, you don’t see the extra tag information. The command just shows the commit:

$ git show v1.4-lw
commit 15027957951b64cf874c3557a0f3547bd83b3ff6
Merge: 4a447f7... a6b4c97...
Author: Scott Chacon <schacon@gee-mail.com>
Date:   Sun Feb 8 19:02:46 2009 -0800

    Merge branch 'experiment'
Verifying Tags
To verify a signed tag, you use git tag -v [tag-name]. This command uses GPG to verify the signature. You need the signer’s public key in your keyring for this to work properly:

$ git tag -v v1.4.2.1
object 883653babd8ee7ea23e6a5c392bb739348b1eb61
type commit
tag v1.4.2.1
tagger Junio C Hamano <junkio@cox.net> 1158138501 -0700

GIT 1.4.2.1

Minor fixes since 1.4.2, including git-mv and git-http with alternates.
gpg: Signature made Wed Sep 13 02:08:25 2006 PDT using DSA key ID F3119B9A
gpg: Good signature from "Junio C Hamano <junkio@cox.net>"
gpg:                 aka "[jpeg image of size 1513]"
Primary key fingerprint: 3565 2A26 2040 E066 C9A7  4A7D C0C6 D9A4 F311 9B9A
If you don’t have the signer’s public key, you get something like this instead:

gpg: Signature made Wed Sep 13 02:08:25 2006 PDT using DSA key ID F3119B9A
gpg: Can't check signature: public key not found
error: could not verify the tag 'v1.4.2.1'
Tagging Later
You can also tag commits after you’ve moved past them. Suppose your commit history looks like this:

$ git log --pretty=oneline
15027957951b64cf874c3557a0f3547bd83b3ff6 Merge branch 'experiment'
a6b4c97498bd301d84096da251c98a07c7723e65 beginning write support
0d52aaab4479697da7686c15f77a3d64d9165190 one more thing
6d52a271eda8725415634dd79daabbc4d9b6008e Merge branch 'experiment'
0b7434d86859cc7b8c3d5e1dddfed66ff742fcbc added a commit function
4682c3261057305bdd616e23b64b0857d832627b added a todo file
166ae0c4d3f420721acbb115cc33848dfcc2121a started write support
9fceb02d0ae598e95dc970b74767f19372d61af8 updated rakefile
964f16d36dfccde844893cac5b347e7b3d44abbc commit the todo
8a5cbc430f1a9c3d00faaeffd07798508422908a updated readme
Now, suppose you forgot to tag the project at v1.2, which was at the "updated rakefile" commit. You can add it after the fact. To tag that commit, you specify the commit checksum (or part of it) at the end of the command:

$ git tag -a v1.2 -m 'version 1.2' 9fceb02
You can see that you’ve tagged the commit :

$ git tag
v0.1
v1.2
v1.3
v1.4
v1.4-lw
v1.5

$ git show v1.2
tag v1.2
Tagger: Scott Chacon <schacon@gee-mail.com>
Date:   Mon Feb 9 15:32:16 2009 -0800

version 1.2
commit 9fceb02d0ae598e95dc970b74767f19372d61af8
Author: Magnus Chacon <mchacon@gee-mail.com>
Date:   Sun Apr 27 20:43:35 2008 -0700

    updated rakefile
...
Sharing Tags
By default, the git push command doesn’t transfer tags to remote servers. You will have to explicitly push tags to a shared server after you have created them. This process is just like sharing remote branches — you can run git push origin [tagname].

$ git push origin v1.5
Counting objects: 50, done.
Compressing objects: 100% (38/38), done.
Writing objects: 100% (44/44), 4.56 KiB, done.
Total 44 (delta 18), reused 8 (delta 1)
To git@github.com:schacon/simplegit.git
* [new tag]         v1.5 -> v1.5
If you have a lot of tags that you want to push up at once, you can also use the --tags option to the git push command. This will transfer all of your tags to the remote server that are not already there.

$ git push origin --tags
Counting objects: 50, done.
Compressing objects: 100% (38/38), done.
Writing objects: 100% (44/44), 4.56 KiB, done.
Total 44 (delta 18), reused 8 (delta 1)
To git@github.com:schacon/simplegit.git
 * [new tag]         v0.1 -> v0.1
 * [new tag]         v1.2 -> v1.2
 * [new tag]         v1.4 -> v1.4
 * [new tag]         v1.4-lw -> v1.4-lw
 * [new tag]         v1.5 -> v1.5
Now, when someone else clones or pulls from your repository, they will get all your tags as well.