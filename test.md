#### This is not SDN #####
#Introduction
git init ( add repo)
git add #name -> stage file
git commit -m " commit file"
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


