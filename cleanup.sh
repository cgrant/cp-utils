## Required Vars

# APP_ID

# INSTANCE_GIT_REPO_TOKEN
# INSTANCE_GIT_REPO_OWNER

## Access token needs delete rights which is not included in the base repo rights
## Delete Trigger
TRIGGER_NAME=${APP_ID}-webhook-trigger
gcloud alpha builds triggers delete ${TRIGGER_NAME} -q


## Delte Secret 
SECRET_NAME=${APP_ID}-webhook-trigger-secret
gcloud secrets delete ${SECRET_NAME} -q

## Delete Repo
export GIT_TOKEN=${INSTANCE_GIT_REPO_TOKEN}
export GIT_USERNAME=${INSTANCE_GIT_REPO_OWNER}
export BASE_DIR=${PWD}
export GIT_CMD=${BASE_DIR}/cp-utils/git/gh.sh
export GIT_ASKPASS=${BASE_DIR}/cp-utils/git/git-ask-pass.sh
${GIT_CMD} delete ${APP_ID}

