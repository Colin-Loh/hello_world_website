# Goal
The goal is to create a quick web app using Terraform to deploy a small hello world website. 

## Infrastructure as Code 
The preferred Infrastructure as Code tool to use is Terraform and we will be using Azure as the preferred technology of choice to deploy a hello world website. 

## Files

```
.
└── hello_world_website
    └── terraform
        ├── main.tf
        ├── providers.tf
    └── website
        ├── index.html
```

| **Folders** 	| **Description**                                                                                                                                                                                                                                                                   |
|----------	|-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------	|
| terraform | Contains terraform infrastructure to deploy Azure resources that will be used to deploy a hello world website |
| website | Contains html code, this is simply to output "hello world" |
 
## Instructions - Quick Design

![diagram](/diagram.png)

App Service Plan acts as the hosting environment for our web app. It defines the physical resource that will be used to host App Service Apps.

Azure App Service App is a fully managed platform-as-a-service that lets us build and deploy web app. In this case we are deploying a static hello world web page.

Once the Web App is deployed, we can use the following command to configure a local git respository as the deployment source for Azure App Service Web App: 

```
az webapp deployment source config-local-git \
    --name <app_name> \
    --resource-group <resource_group_name>
```

Once we hvae configured the local Git repository as the deployment source for the app, we can use `git` commands to push `index.html` to the repository and the changes will be automatically deployed to the Azure App Service Web App.

You can view my simple hello world website here:
https://demo-hello-world-as.azurewebsites.net/

## Further Plans 

![furtherplans](/furtherplans.png)

If time permits, there are many others ways we can develop our initial design further. 

In the architecture above, user can access the web app using a public ip or ideally DNS Lookup but that would cost additional funds. 

The request is later sent over to the Azure Load Balancer which distributes the request to one of the web servers hosting the app. 

The web server is running on Azure App Service which is the platform-as-a-service that can be used to build and deploy web, mobile and API apps. 