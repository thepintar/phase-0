#1.1 Think About Time

I read and learned about a few techniques: the Pomodoro technique, Fogg's Tiny Habits method, and some general "counter-intuitive productivity" tips. The Pomodoro technique seems to be the most useful here as it doesn't require a prior habit to anchor it to and can be applied easily. The technique itself is a good example of Time Boxing, a method whereby a specific predetermined time period is used to complete a task, the completion of which signals the termination of the task. Using several "time boxes" in a row with regulated break periods as the Pomodoro Technique suggests ought to give me suitable concentration time to effectively work while preventing burnout.

At the moment I manage my time through habit and change of environment. I find it difficult to work in the same environment in which i relax, so I set aside five hours per day and travel to the library or a cafe to get work done. Its become automatic to get into a work and learn mindset as soon as I step into the library at this point, which is helpful. I also set a rule for myself that I can't use my phone except to send and receive critical messages so as to keep distraction out of my designated work space.

So far, I've been successful at avoiding burnout and just take breaks where it feels natural. However, I'll try out the Pomodoro Technique and see if it makes me even more productive. If it goes well it will become a welcome addition to my plan for time management in Phase 0.

#1.2 The Command Line

The shell is the interface that allows the user to communicate with the processor. On OSX I use Terminal, which is a command-line shell, though I believe the GUI of OSX is also considered a shell; however, it's a graphical shell rather than a command-line shell. Bash is the language of the command-line shell (Unix-based if I'm not mistaken) which allows the user to communicate with the processor. I thought it was cool that you can actually program within the shell using bash (a shell script I think).

The most challenging part about this material was just taking in and remembering all of these new commands. On the whole they're fairly straight-forward; mkdir looks like "make directory" for instance. Still, there are a bunch of them, and keeping them straight will require consistent practice and use. To answer the question, I was successfully able to use them all.

I believe the most important commands are the more basic pwd, cd, ls and mkdir. Of course it depends on what you're trying to accomplish, but being able to move around the directories and know where you are seems fairly critical to accomplishing anything.

And now, to define the commands off the top of my head:

pwd: print working directory- essentially tells you where you are

ls: list directory - tells you all of the folders and files within the current directory

mv: move something- self explanatory

cd: change directory- again, self explanatory

../: I don't know if this has a name, but it navigates "up" a directory from where you currently are.

touch: makes a new empty file

mkdir: make directory makes a new directory within the current directory

less: prints a selected file one page at a time, advanced by the space bar

rmdir: remove directory- deletes directory

rm: remove a file

help: its help.

#1.4 Forking and Cloning

If I were to write out instructions for a new user to create a new repository, fork a repository and clone a repository, I would do so in such a way:

In order to create a new repository in GitHub, first navigate to your user page and then locate the plus sign in the top-right corner. Click this plus sign and select "Create New Repository" to create a new repository and complete the process by naming it and adjusting the parameters if necessary. Finish by clicking "Create Repository". Ta-da!

In order to fork an existing repository, first navigate to the desired repository. Again, look to the top-right corner and locate the "Fork" button. Click this button. An exact copy of the repository will be placed into your profile.

To clone a repository, navigate to it. Now locate the clone url, in this case you should find it near the top. Look for the only url there. Its next to a button labeled "HTTPS" (which can change the format of the URL). Copy this URL. Next, in your command-line shell, type the command "git clone " followed by pasting the URL you just copied. Hit enter. Voila!

You would fork a repository so as to create an exact copy to work with that would not affect the original in any way. Maybe you want to play around with someone else's code but not mess with their repository.

I didn't have any struggles in setting up git and GitHub, but I learned a lot about what they're used for and how to use them!