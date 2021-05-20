# Portfolio-Forge
Portfolio-Forge Project
Submodules:
* javatures/[Porfolio-Frontend](https://github.com/javatures/Portfolio-Frontend)
* javatures/[Forge-Backend](https://github.com/javatures/Forge-Backend)

  
  
## GETTING STARTED :rocket:

We have tried to make getting started with this project, both in terms of running the project and in terms of jumping into the development process, as easy as possible. To that end, we have two scripts in the *scripts/* folder. To see how to use them, please read on.

### :runner: Running the Application right now to try it for yourself :sandwich: 
If you want get started immediately, you can run the application locally accessible at [localhost:3000/portfolio](http://localhost:3000/portfolio) by entering the project's root directory and calling:

> sh /scripts/pf_start.sh

You may have to set permisions for pf_start.sh first, eg:

> chmod +x scripts/pf_start.sh

Running *pf_start.sh* will also make the backend API locally accessible at [localhost:8081](http://localhost:8081).

  
  

### :building_construction: Running Jenkins for getting started with the project development process tout de suite :fr:
If you want to get started right away with Jenkins for the project development process, the script for that is */scripts/pf_jenkins.sh*.
Because Jenkins requires credentials for accessing GitHub, a secret file called *.secrets* in the project's root directory is used to pass those credentials to Jenkins during the build. The secret file is excluded from sharing on GitHub for obvious reasons, but to use *pf_jenkins.sh*, you must create the *.secrets* file specifying a minimal number of environment variables: CRED_USERNAME and CRED_PASSWORD.

>CRED_USERNAME is a GitHub username for accessing the repository
>
>CRED_PASSWORD is a GitHub password or Personal Access Token (PAT) corresponding to CRED_USERNAME

For example, in *.secrets*:

>CRED_USERNAME=githubusername
>
>CRED_PASSWORD=githubpersonalaccesstoken

Then you can start Jenkins by calling *sh /scripts/pf_jenkins.sh* from the project's root directory. Jenkins can then be accessed by going to [127.0.0.1:8080](http://127.0.0.1:8080). The default admin sign-in is username "admin-id", and password "admin-password".
