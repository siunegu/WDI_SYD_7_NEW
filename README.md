# WDI7 Homework Sydney

First time set-up:

a. Fork this repository
-----
Click the fork icon on the top right to get your own copy on github

b. Clone the forked repository
----
On your repository, click the copy clone url and clone it on your local machine

    git clone your_repo_on_git

c. Add an upstream
----
```
cd WDI_SYD_7_NEW
git remote add upstream git@github.com:ga-students/WDI_SYD_7_NEW.git
git pull upstream master
```

d. Add Homework
----
When adding homework, create a folder for the week, then for the day, then put your homework in that day

```
cd WDI_SYD_7_NEW
cd firstname
mkdir wk4
cd wk4
mkdir d01
cd d01
mkdir whatever_app_were_making
git add .
git commit -m "homework"
git push
```

e. Submit a pull request on github
----
Click the green button labeled pull request and submit a pull request to my repo
