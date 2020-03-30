alias vi='vim'
alias gs='git status'
alias gl='git log --oneline --decorate --max-count=15'
alias gpr='git pull --rebase'
alias gita='git add --all'
alias gamend='git commit --amend'
alias kctx='kubectl config use-context'
alias useEnv='sudo ~/dev/saagie/product/ondemand/useEnv.sh'
gce(){gcloud compute instances list --filter name~$1 --format="[box](name:label=Name,status.color(green=RUNNING):label=Status,networkInterfaces[0].networkIP:label='Internal IP', networkInterfaces[0].accessConfigs[0].natIP:label='Public IP',networkInterfaces[1].networkIP:label='Internal Mgmt IP', networkInterfaces[1].accessConfigs[0].natIP:label='Public Mgmt IP',creationTimestamp.date('%Y-%m-%d'):label='Created On')" }
gcedate(){gcloud compute instances list --filter="name ~ ^a.*cmnmanager.*" --format="[box](name.sub('cmnmanager1',''):label=Name:align=right,status.color(green=RUNNING),creationTimestamp.date('%Y-%m-%d'):sort=1:label='Created On')"}
vault(){ssh creativedata@192.168.100.20 -p51786 "docker exec -t vault vault $@"}
ssh_gce(){ ssh creativedata@$(gcloud compute instances list --filter name~a$1  --format="json(name,networkInterfaces[].networkIP)" | jq -r '.[] | select(.networkInterfaces[0].networkIP=="'"$2"'") | .networkInterfaces[1].networkIP') -p51786 }
alias sssh='ssh -o StrictHostKeyChecking=no -p51786 -l creativedata'
capsule(){ params=$@; docker run --net=host -v $SSH_AUTH_SOCK:/ssh-agent --env SSH_AUTH_SOCK=/ssh-agent  -v $PWD:/apollo-capsules -v ~/.ssh/id_rsa:/root/.ssh/id_rsa  -it saagie/ansible-docker sh -c "cd /apollo-capsules && ./deploy.sh $params"}
kns(){kubectl config set-context $(kubectl config current-context) --namespace=${1:-saagie-common}}
