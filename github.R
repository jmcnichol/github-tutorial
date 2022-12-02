#### 1. Sign up at GitHub.com ################################################

## If you do not have a GitHub account, sign up here:
## https://github.com

# ----------------------------------------------------------------------------

#### 2. Install git ##########################################################

## If you do not have git installed, please do so: 
## Windows ->  https://git-scm.com/download/win
## Mac     ->  https://git-scm.com/download/mac
## Linux   ->  https://git-scm.com/download/linux
##             or: $ sudo dnf install git-all

# ----------------------------------------------------------------------------

### 3. Configure git with Rstudio ############################################

## set your user name and email:
usethis::use_git_config(user.name = "your Github username here", user.email = "your email here")

## create a personal access token for authentication:

## if you already have a personal access token, comment this line out!
usethis::create_github_token() 
## in case usethis version < 2.0.0: usethis::browse_github_token() (or even better: update usethis!)

## set personal access token:
credentials::set_github_pat("token_here")


## store your personal access token with: GITHUB_PAT=xxxyyyzzz
## and make sure '.Renviron' ends with a newline

# ----------------------------------------------------------------------------

#### 4. Restart R! ###########################################################

# ----------------------------------------------------------------------------

#### 5. Verify settings ######################################################

usethis::git_sitrep()

## Your username and email should be stated correctly in the output. 
## Also, the report shoud cotain something like:
## 'Personal access token: '<found in env var>''

# ----------------------------------------------------------------------------

## THAT'S IT!