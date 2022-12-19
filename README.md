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
 
## Instructions 

![Process Flow](/mvpdiagram.png)

1. 