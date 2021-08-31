    echo "##########################################################################"
    echo "###################### Updating packages ##############################"

    sudo apt-get update

    echo "##########################################################################"    
    echo "###################### Installing Git ##############################"

    sudo apt-get install git -y
   
    echo "##########################################################################"
    echo "############### Installing NodeJS via Node Version Manager on an Ubuntu Machine ###############"

    #curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.38.0/install.sh | bash
    #source ~/.bashrc 
    #nvm list-remote

    chmod 755 /vagrant/nvm-install.sh
    /vagrant/nvm-install.sh

    source ~/.nvm/nvm.sh

    nvm install v14.17.5
    #Switch: nvm use v14.10.0 

    sudo apt install npm -y

    echo "##########################################################################"
    echo "############# Installing and configuring Docker for Dev #######################"

    sudo apt-get install docker.io -y
    sudo usermod -G docker ubuntu
    sudo usermod -G docker vagrant
    docker --version

