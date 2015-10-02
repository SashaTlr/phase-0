# Section 1.5 Reflection

##How does tracking and adding changes make developers' lives easier?
Tracking and adding changes allows developers to continually save their work, while maintaining a history of what changes were made to the work along the way. This makes it easy to revert back to an older version of code if something goes wrong. In addition, it allows a group of developers to collaborate or take over existing code, as they can see how the work developed, why things were done in certain ways, and by whom.
##What is a commit?
A commit is a process using git to send added or modified files to your local branch based on when it was last staged. You use the git commit command, and can use git commit -a so skip the process of adding to the stage first.
##What are the best practices for commit messages?
Commit messages should include a subject line that is separate from the body of the message. The subject line should be 50 characters and be capitalized. The text should be written in imperative tense, not past tense, should be less than 72 characters wide, and should explain what, why, and who.
##What does the HEAD^ argument mean?
Head^ is the currently checked out commit. Head-1, -2, etc can be used to get to previous commits.
##What are the 3 stages of a git change and how do you move a file from one stage to the other?
The three stages of a git change include
..1) Create a new branch off of your master using the git checkout -b new-branch command. This creates a new branch to work in locally where you can make your changes.
..2) Add the changes to the stage using the git add command.
..3) Commit the stages using the git commit command.
##Write a handy cheatsheet of the commands you need to commit your changes?
..1) git checkout -b newfile
..2) cd desiredDirectory and touch newfilename (if needed)
..3) git status (check status of changes)
..4) git add newfilename
..5) git commit newfilename (create commit message at prompt)
##What is a pull request and how do you create and merge one?
A pull request is important as it merges changes made locally to the master branch in GitHub. To create and merge, it is important to first make sure that the master that you cloned matches the version in the remote repository.To do this, checkout the master using git checkout master and then git pull origin master. This will merge changes in the remote repo and merge with your local master.
From here, you want to merge your modified branch with your local master. To do this, run git checkout feature-branch-name (to get to your modified branch), and then run git merge master to merge with the master branch.
You then need to push your branch to the remote fork that you created in GitHub. To do this, run git push origin feature-branch-name. This will create a pull request in GitHub.
Now, to merge your changes with the remote master files, you have to go into GitHub and navigate to your branch. Click on 'Pull Request' and select 'Create Pull Request'. Once this is done, click "Merge Pull Request" and your branch has now been merged.
##Why are pull requests preferred when working with teams?
Pull requests are preferred because it allows other team members to review changes and approve modifications before allowing changes to be merged into the master files. This is important as a way to validate work before integrating into the existing project in order to reduce errors being introduced into the files.