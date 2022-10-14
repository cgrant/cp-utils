
## Required Vars
export PROJECT_ID=crg-workbench 

export APP_ID=foobar2
export REGION=us-central1

export API_KEY=

export INSTANCE_GIT_REPO_TOKEN=
export INSTANCE_GIT_REPO_OWNER=cgrant
export INSTANCE_GIT_REPO_NAME=${APP_ID}



./createApp.sh

./createWebhook.sh


#./cleanup.sh