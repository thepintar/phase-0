How does tracking and adding changes make developers' lives easier?
Tracking and adding changes allows developers to work together seamlessly on a project, merging in new additions only once they're tested and approved. It also allows the opportunity to debug new changes by reverting to older commits to find where the error was introduced.

What is a commit?
A commit can be thought of as a version or save-point for a project. Each commit represents the project at different stages of development.

What are the best practices for commit messages?
Commit messages should be short and clear, with the first heading representing the main idea of the content, i.e. it ought to be the clear subject line. Verb tense should be imperitive present tense.

What does the HEAD^ argument mean?
The HEAD^ argument points to the last commit, or the commit prior to the current one.

What are the 3 stages of a git change and how do you move a file from one stage to the other?
The three stages of a git change are "not staged for commit," "staged for commit" and "committed". You move from the first to the second by using the command "git add" and you move from the second to the third using "git commit -m" followed by the commit message.

Write a handy cheatsheet of the commands you need to commit your changes?
git status -> check the status
git add ("." or filename) -> add file/s for staging
git commit -m "message" -> commit file with message

What is a pull request and how do you create and merge one?
A pull request retrieves the latest updates from the server and updates the branches stored locally on the machine.

Why are pull requests preferred when working with teams?
Using a pull request, each individual developer can update the project on their local systems from the cloud, so they can work on the most recent version of the project easily without having to swap data with each developer on the team individually.