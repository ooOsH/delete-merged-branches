# delete all branches merged into main
dam() {
  echo " "
  echo "Deleting all merged branches 🗑️"
  echo " "
  git branch --merged | grep -v '\*\|master\|develop' | xargs -n 1 git branch -d && git branch -r && git remote prune origin
  echo " "
  echo "Done ✅"
  echo ""
}