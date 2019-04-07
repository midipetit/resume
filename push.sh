setup_git() {
  git config --global user.email "travis@travis-ci.org"
  git config --global user.name "Travis CI"
}

commit_pdf() {
  git checkout master
  git add . *.pdf
  git commit --message "Travis build: $TRAVIS_BUILD_NUMBER"
}

upload_files() {
  git remote remove origin
  git remote add origin https://csakou:${GH_TOKEN}@github.com/csakou/resume.git > /dev/null 2>&1
  git push --quiet -u origin master
}

setup_git
commit_pdf
upload_files
