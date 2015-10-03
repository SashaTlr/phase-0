#Section 1.6 Website Reflection

##Paste a link to your github.io repository.
https://github.com/SashaTlr/SashaTlr.github.io.git

##Explain how to create a repository on GitHub and clone the repository to your local computer to a non-technical person.
1) To create a repository on GitHub, sign in to your profile at github.com.
2) Select the '+' icon on the top right of the page, and choose 'New Repository'.
3) Create a name for the repository in the Repository Name field. Add in an optional description, choose Public (to make the repo publicly available), check 'Initialize this repository with a README', and choose 'MIT License' under 'Add a license'.
4) Select 'Create repository'.

To clone this repository to your local computer:
1) Under 'Your Repositories', find the repository that you want to clone and select it.
2) In the right panel, there will be a clone URL. Select 'Copy to Clipboard'.
3) Open your terminal on your computer. You will need to find the directory that you would like to copy this repository to. Type in pwd to see what directory you are in.
4) From here, either navigate up using cd .. or down into the directory using cd [filename] until you are in the directory that you want to clone the repo into.
5) Use command git clone [URL], where URL is the link that you copied to clipboard from GitHub. Use this command to clone the repo into your local directory.
6) Done!

##Describe what open source means.
Open source (specific to software) is software where the original source code is publicly available for free, and can be redistributed or modified by other users, depending on the specifics of the license.

##What do you think about Open Source? Does it make you nervous or protective? Does it feel like utopia?
I'm big on collaboration and community so appreciate Open Source. Open Source is great because it is a tool for innovation and it is transparent, but consequently, it is often not as robust as commercial software, so documentation, usability etc may be impacted. In addition, there isn't usually the benefit of a professional tech support team, and there's no guarantees as to how long the software will be available and supported for. An example in my experience has been the difference between MatLab and R - while the latter seems to be more popular now, MatLab is a much cleaner and easier program to pick up as a beginner (in my opinion). It's expensive though!

##Assess the importance of using licenses.
When source code is created, it technically cannot be redistributed by anyone who has made a modification due to copyright infringement. This hinders the collaborative aim of open source software. An open source license takes care of this as it grants developers of the source code the rights to use the code anywhere and to redistribute the code and any modifications, so long as the license is maintained. The various types of licenses have subtle differences, for example, the BSD license doesn't require redistributions to contain the source code.

##What concepts were solidified in the challenge? Did you have any "aha" moments? What did you struggle with?
The git process became much clearer once I did it on my own. The "aha" moment came in creating the github.io website,  going through the process of merging the code back to GitHub, and then clearing the branches from GitHub and my local computer. Previously, I was deleting the branch locally using rm -rf on the command line as I was getting an error when I tried using the git delete function (git branch -d branchname), but I realized that I wasn't switching out of the local branchname before trying to delete it.

##Did you find any resources on your own that helped you better understand a topic? If so, please list it.
OpenACS.org helped in understanding the licensing concept and why it's needed.
The article https://confluence.atlassian.com/bitbucket/branch-or-fork-your-repository-221450630.html was helpful in clarifying when you branch versus forking during the earlier sections of week 1, although with practice, this concept became much clearer.
The git-scm.com resource was mentioned in the notes, and was very useful in expanding on concepts that we were introduced to, especially the idea of branching and merging.