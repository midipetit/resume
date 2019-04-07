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
  git remote remove origin-pages
  git remote add origin-pages https://${GITHUB_TOKEN}@github.com/csakou/resume.git > /dev/null 2>&1
  git push --quiet --set-upstream origin-pages master
}

setup_git
commit_pdf
upload_files
