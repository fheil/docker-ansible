FROM alpine:latest
RUN apk update && apk add --no-cache bash joe openssh-client ca-certificates ansible && mkdir -p /ansible/.ssh

RUN echo -e "\
PROMPT_COMMAND='PS1=\`if test \"\$UID\" = 0 ; then\n\
        echo \"\033[37;43;1;1m[\h]\033[0m\w $ \" ;\n\
    else \n \
        echo \"\033[34;47;1;7m[\u@\h]\033[0m\w > \" ; \n\
    fi \`' \n\
export PROMPT_COMMAND \n\
" > /etc/profile.d/profile.local.sh

RUN echo -e "\
. /etc/profile \n\
ansible --version \n\
\n\
echo\n\
echo -e \"things to try: \\e[96mansible 'all' -i inventory.yml -m ping\\e[0m\"\n\
echo -e \"               \\e[96mansible all -i inventory.yml --list-hosts\\e[0m\"\n\
echo -e \"               \\e[96mansible-playbook -i inventory.yml apb_env_vars_test.yml\\e[0m\"\n\
echo\n\
echo -e \"setup new host: \\e[95mtype \\e[92m/ansible/setup_host.sh\\e[95m to display client host setup script.\\e[0m\"\n\
echo\n\
" >> /root/.bashrc

WORKDIR /ansible
