#1.1 Think About Time
I learned about meditation and it's affects on the brain (and consequently, productivity), which I found very interesting. I downloaded HeadSpace, as recommended in the article, and have enjoyed it so far! I've found that putting my brain on silence for a small window of time really accelerates my productivity and focus. Another new idea that came out of this exercise was the habit-making technique from Frogg. Breaking the new habit into smaller pieces and then tying it to an existing activity, instead of telling myself that I must make this life changing habit right away (e.g. working out 4 times a week for 30 min) makes the new habit far less intimidating.

Time boxing means to set fixed time periods to complete planned tasks. Since Phase 0 tasks are broken down into short/medium/long, the time frame for each section of each module can easily be estimated and then broken down into fixed time windows. I personally find 25-minute windows to work best for myself, so will plan on breaking each task into 25-minute slots, much like the pomodoro technique (but without the tomato...).

I manage my time best by setting aside fixed time periods, much like the time boxing technique. I am easily sidetracked, so either the night before or at the start of the day, I need to make a list of priorities and write a schedule of when I will tackle each activity throughout the day. My current strategy works when I preplan my schedule, but if I fail to do this step, I find myself to be very unproductive. I will be employing time boxing in DBC, and I think if I use Fogg's technique to build the habit of planning regularly, I will be able to effectively time manage. I plan on using HeadSpace as well to clear my head and focus, as it is easy to get lost in your code, and stepping out of work for a bit refreshes your mind and helps you spot errors/form ideas that you weren't seeing before, making you more productive in your efforts.

#1.2 The Command Line
"bash" is a popular UNIX shell. A shell is an interface that a user can use to access the OS, and can be a command-line interface or a graphical user interface (which is the format most of us are more familiar with). Bash is a kind of shell using a command-line interface.

The challenging part of this material was understanding how to combine multiple functions, for example, the function grep –l romeo 100.txt.utf-8 | wc –l from the video was not something that would have occurred to me on my own even though grep -l, pipes, and wc -l had already been introduced.

Combining the exercises along with research online helped me successfully use all of the commands. The following all ran successfuly:

*pwd: print working directory - tells you the path of the current directory that you're in

*ls: lists files and subdirectories of a given path. Can give further details when you append -l

*mv: moves files and folders to another file or directory

*cd: cd changes the directory. You can specify where to go, or use cd alone to get to your home directory. cd .. will take you up one directory.

*../: use with cd to move up one directory

*touch: we've used this to create files although it can also extend to modifying file attributes

*mkdir: makes a new directory

*less: prints the beginning section of a file, and you can move forwards or backwards through the file using 'space' and 'w' (vs cat which spits out the whole thing)

*rmdir: removes a directory, but won't work if the directory isn't empty

*rm: removes a file, can be extended using -rf to remove a directory even if it isn't empty

*help: help will pull out the section of the manual pertaining to whichever function has been requested

#1.4 Forking and Cloning

I am going to assume that the new person already has GitHub and git set up and installed.

We are going to use GitHub to create a new repo, and then clone it into our local directory. This means that GitHub will remotely host our repository, and once we clone it into our local directory, we can push and merge any modifications into the remote repository so that it will be accessible to others.

Create a new repo: First, sign into your GitHub profile (github.com) and click the '+' symbol ('Create New') in the top right of the page. From there, choose 'New Repository'. Select a name for this repository and put it into the Repository Name field. Select 'Public' to keep this as a public repo, and then choose "MIT License' for the "add a license" field. You have now created a new repo!

To fork this repo (or an existing repository), navigate to the repository, select 'Fork' in the top right of the GitHub GUI, and then select the repository that you would like to fork the repo to.

Once you have forked this repository and want to clone it to your local directory, or if you want to clone the repo that you've created, navigate to the repository that you'd like to clone through your GitHub GUI, and then copy to clipboard the URL in the right bar, where it says 'clone URL'.

Go to your Terminal, and type 'git clone URL'. This will clone the repository to your local directory. You will now see copies of these repositories in your local drive.



I already had my git and GitHub accounts set up, however, I wasn't clear on the difference between the two, and wasn't clear on the fork, commit, and push/pull processes. I misunderstood 'pull' to behave in the way the fork and clone functions work, as in I would "pull" in a branch locally to work on. So this exercise significantly clarified the functionalities of GitHub and git, when to use the git command line vs GitHub GUI, and how to use the different functions in the command line.

I also better understand the difference between creating a branch versus forking a repository. If you want to maintain independence from the original repo, forking will create a copy of the repo for you, and you can store your commits in here as opposed to committing them to a branch that is linked to the master code. Branching makes sense when it's a team working on different features of a piece of code, but if you are experimenting or playing with the code on your own, and if your main intention isn't to contribute to the master code or merge to the master code, forking usually makes more sense.