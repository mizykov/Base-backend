# EduHelper-backend


Welcome to the club, buddy!


## TODO

    + i) Installation on macos
    + ii) Fix the error of pulling local docker image


## Prerequirements for Ubuntu 22.04

### Install kubernetes k3s

    + i) ```curl -sfL https://get.k3s.io | sh -```
    + ii) Make this for execute commands without sudo:

        ```sudo chmod ugo+r /etc/rancher/k3s/k3s.yaml```

    + iii) Next, you need to export KUBECONFIG to a variable environment 
    by executing the following command: 

        ```export KUBECONFIG=/etc/rancher/k3s/k3s.yaml```

### Install kubernetes k3s

    + i) ```curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null```

    + ii) ```sudo apt-get install apt-transport-https --yes```

    + iii) ```echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list```

    + iv) ```sudo apt-get update```

    + v) ```sudo apt-get install helm```

### Install docker and docker-engine?

1. Update the apt package index and install packages to allow apt to use a repository over HTTPS:

    ```sudo apt-get update```

    ```sudo apt-get install ca-certificates curl gnupg lsb-release```

2. Add Docker’s official GPG key

    ```sudo mkdir -p /etc/apt/keyrings```

    ```curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg```

3. Use the following command to set up the repository:

    ```echo "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu $(lsb_release -cs) stable" | sudo tee /etc/apt/sources.list.d/docker.list > /dev/null```

4. Update the apt package index, and install the latest version of Docker Engine, containerd, and Docker Compose, 
   or go to the next step to install a specific version:

    ```sudo apt-get update```

    ```sudo apt-get install docker-ce docker-ce-cli containerd.io docker-compose-plugin```

5. apt-cache madison docker-ce

    ```apt-cache madison docker-ce```


## How to use

You should install helm chart from root directory

'''helm install <ANY_NAME_OF_YOUR_CHART> ./edu_helper/helm
