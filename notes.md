#### This is  SDN branch #####
#Introduction
git init ( add repo)
git add #name -> stage file
git commit -m " commit file"
git -a -m "notes" -> this would stage and commit any files"
git status 
git log - show our commint history
git log --all --decorate --oneline --graph (show nice label commit graph) --> created an alis: alias graph="git log --all --decorate --oneline --graph"



#Branches
Work in different version of files in parallel, editing one branch can be independt of other branches, then we can incorporate or merge our branches. We can have prod, development and one for bug fixes

# Create new Branches
git branch  #name ( I created 2 branches SDN and auth)
git branch  -> display the number of branches we have

# Check out and work in branches
git checkout <branch name>  this will  make the head to move the branch

# Merges: fast forward and 3 way merge
#Fast forward merge
merge our SDN into the master branch
>git merge <branch name>
So we move first to master branch and do the merge
> git diff master..SDN (would show us what is to change)

# Delete branches
Firstly: 
>git branch --merged > show is the our master branch merge with sdn
> git branch -d sdn : this would delete the branch
If you are sure you want to delete it, run 'git branch -D auth'

# 3 way merged: this case is the auth into master.
git look at 3 commit: first the base commit from master to auth, then last commit fromeach branch
