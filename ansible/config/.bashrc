. /etc/profile
ansible --version

echo
echo -e "things to try: \\e[96mansible 'all' -i inventory.yml -m ping\\e[0m"
echo -e "               \\e[96mansible all -i inventory.yml --list-hosts\\e[0m"
echo -e "               \\e[96mansible-playbook -i inventory.yml apb_env_vars_test.yml\\e[0m"
echo
echo -e "setup new host: \\e[95mtype \\e[92m/ansible/setup_host.sh\\e[95m to display client host setup script.\\e[0m"
echo
