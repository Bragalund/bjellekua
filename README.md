# bjellekua

## prerequisites

### install ansible on host and command-machine

#### UBUNTU 18.04 with Apt as packagemanager
Add the ansible repo to your package manager.
Update the system and verify that you have the newest ansible version installed.
Apt comes with ansible, but it is not the newest version.


```()
sudo apt-add-repository ppa:ansible/ansible; 
sudo apt update -y && sudo apt upgrade -y; 
sudo apt install ansible;  
ansible --version;
```

... or just run the [installScript](installNewestAnsibleWithAptOnUbuntu18.04.sh).


## Testing

Tests are run using vagrant.

### Install vagrant (and virtualbox) locally

Just run this [shell-script](installVagrantWithAptOnUbuntu18.04.sh) or, if you have installed ansible on your machine, run this [playbook](playbooks/integration-test-plays/vagrant-play.yml).

