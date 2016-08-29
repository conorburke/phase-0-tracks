##Have a nice weekend Tyler!

# Git Definitions

**Instructions: ** Define each of the following Git concepts.

* What is version control?  Why is it useful?

> Version control is the practice of having multiple copies of a file or program that can be consolidated into a final product.  It's useful for many reasons.  First, it allows multiple parties to work on a project simultaneously through a structured system.  It also gives a revision history of all changes and updates made to the file, including who made what changes and when.  This makes consolidating and restoring to past versions not only possible but fairly easy.  Overall, it allows for more seamless collaboration along with enhanced security of the project.  

* What is a branch and why would you use one?

> A branch is essentially a carbon copy of the original version (at the time of branching) which can then be modified.  You would use a branch in order to work on an existing project while keeping the main version (the master branch) clean and unbroken.  This allows you to experiment and test code out, and then merge that into the final project when finished.  Branching enables collaboration without crashing the project.

* What is a commit? What makes a good commit message?

> A commit basically is the command that saves the changes you made on a file to the local repository.  It takes tracked changes in the staging area (that were the result of git add) and then 'commits' them to the file, along with info such as a time-stamp, who modified the file, and a message.  A good commit message is fairly concise but specifies exactly what was changed.  "Updated file" would be a horrible commit message but something like "added a while loop to the end of file1.txt" would give other people in the project a decent sense of what was modified.  

* What is a merge conflict?

> A merge conflict occurs when you are merging to a branch that has contrasting commits.  For example, if I commit changes to the first line of file1.txt and then merge that into another branch that has an alternate commit for that same line and file, there will be a merge conflict.  That's because Git doesn't know which commit it should accept, and thus some conflict resolution needs to take place by the user (such as specifying which file and/or code should be final).  Proper communication and coordination between developers is essential to resolving merge conflicts.

