DevOps Project: Building a Full CI/CD Pipeline on AWS
This document provides a comprehensive, consolidated guide for the entire project, covering the setup of a development environment, building a CI/CD pipeline with an automated testing stage, and deploying a Java web application on AWS.

🎥 Video Tutorial Reference
This guide synthesizes the processes demonstrated in the following video series:

Day 1: Project-Based DevOps Introduction

Day 2: Connect a GitHub Repo with AWS

Day 3: Build & Deploy a Web App on Tomcat

Day 4: Build a CI/CD Pipeline with AWS CodePipeline

Day 5: Automate Infrastructure with CloudFormation

Day 6: Add a Testing Stage to your CI/CD Pipeline

📝 Table of Contents
Project Overview

Prerequisites

Part 1: Manual Setup & Deployment (Days 1-3)

Step 1: Set Up the Development Environment (EC2)

Step 2: Connect EC2 to a GitHub Repository

Step 3: Manually Build and Deploy the Application

Part 2: Automation with CI/CD (Day 4)

Step 4: Set Up AWS CodeArtifact

Step 5: Create the CI/CD Pipeline with AWS CodePipeline

Step 6: Add an Automated Testing Stage

Part 3: Infrastructure as Code (Day 5)

Step 7: Automate Infrastructure with AWS CloudFormation

Key Concepts Learned

Troubleshooting

🌐 Project Overview
This project demonstrates a complete DevOps workflow. We begin by manually setting up a server and deploying a web application. We then progress to building a fully automated CI/CD pipeline that automatically builds, tests, and deploys code from a GitHub repository. Finally, we automate the creation of the entire infrastructure itself using Infrastructure as Code.

✅ Prerequisites
An AWS Account

A GitHub Account

A local terminal with an SSH client

Part 1: Manual Setup & Deployment (Days 1-3)
🚀 Step 1: Set Up the Development Environment (EC2)
Launch EC2 Instance: In the AWS Console, launch a t2.micro instance with Amazon Linux 2023.

Create Key Pair: Create and download a new SSH key pair to connect to the instance.

Configure Security Group: Create a security group that allows inbound traffic on Port 22 (SSH) from your IP address.

Install Dependencies: Connect to your instance via SSH and run an install_dependencies.sh script to install necessary software: Java, Git, Maven, Apache Tomcat, and the Apache HTTP Server.

🔗 Step 2: Connect EC2 to a GitHub Repository
Create GitHub Repo: Create a new repository on GitHub and copy its SSH URL.

Generate SSH Key on EC2: On your EC2 instance, generate a new SSH key pair (ssh-keygen) specifically for communicating with GitHub.

Add Deploy Key to GitHub: Add the new public key as a Deploy Key in your GitHub repository's settings, ensuring you check "Allow write access."

Clone the Repo: Clone your repository to the EC2 instance using the SSH URL.

🛠️ Step 3: Manually Build and Deploy the Application
Build the Artifact: Navigate into your project directory and use Maven to build the application into a .war file (mvn package).

Deploy to Tomcat: Copy the generated .war file into Tomcat's webapps directory.

Configure Reverse Proxy: Set up Apache HTTPD to forward requests from port 80 to Tomcat on port 8080.

Open Ports: Update your EC2 Security Group to allow inbound traffic on Port 80 (HTTP).

Start Servers: Use a script to start and enable the tomcat and httpd services.

Part 2: Automation with CI/CD (Day 4)
📦 Step 4: Set Up AWS CodeArtifact
Create Repository: In AWS CodeArtifact, create a private Maven repository to securely store your project's dependencies.

Configure settings.xml: Update your project's settings.xml file to point to your new CodeArtifact repository URL.

🔄 Step 5: Create the CI/CD Pipeline with AWS CodePipeline
Create the Pipeline: In AWS CodePipeline, create a new pipeline with three initial stages.

Source Stage: Connect the pipeline to your GitHub repository using an AWS CodeStar Connection.

Build Stage: Create an AWS CodeBuild project, configuring it to use a buildspec.yml file in your repository. This file gets a token to authenticate with CodeArtifact before running the build commands.

Deploy Stage: Create an AWS CodeDeploy application and a deployment group that targets your EC2 instance using tags. Use an appspec.yml file to give CodeDeploy instructions on how to deploy the application.

🧪 Step 6: Add an Automated Testing Stage
Modify buildspec.yml: Update your buildspec.yml to include a testing step. The mvn package command runs tests by default, but you can use mvn verify for a more comprehensive check that includes integration tests.

Enable Test Reports: In your CodeBuild project settings, go to the "Report group" section. Create a new report group to process the test results.

Report type: JUnit

File path: target/surefire-reports/TEST-*.xml (This is the standard location for Maven test reports).

Observe the Pipeline Gate: Now, if you push code with a failing test, the Build stage will fail, and the pipeline will stop. This "quality gate" prevents bad code from being deployed to production.

Part 3: Infrastructure as Code (Day 5)
🏗️ Step 7: Automate Infrastructure with AWS CloudFormation
Create a CloudFormation Template: Write a YAML or JSON template that defines all the AWS resources needed for the project (VPC, Subnets, EC2 instance, Security Groups, IAM Roles, etc.).

Create a Stack: In the AWS CloudFormation console, create a new "stack" by uploading your template. CloudFormation will automatically provision all the defined resources, making your entire infrastructure repeatable and easy to manage.

🎓 Key Concepts Learned
CI/CD: Automating the software delivery lifecycle.

Infrastructure as Code (IaC): Managing infrastructure through code.

Automated Testing: Integrating unit and integration tests into the pipeline as a quality gate.

Cloud Security: Configuring firewalls (Security Groups) and permissions (IAM Roles).

Artifact Management: Using a secure, private repository (CodeArtifact) for dependencies.

Deployment Automation: Using tags and deployment scripts (appspec.yml) for flexible and scalable deployments.

🤔 Troubleshooting
Permission Denied (publickey): An SSH key is not correctly configured in GitHub's Deploy Keys.

Connection Timed Out: An AWS Security Group is blocking traffic on the required port (22 for SSH, 80 for HTTP).

CodeBuild 401/403 Errors: The IAM Role for your CodeBuild project lacks permissions to access CodeArtifact.

CodeDeploy Failures: The CodeDeploy agent is not installed/running on the EC2 instance, or there is an error in your appspec.yml scripts.

Build Fails at Test Stage: A unit test in your code is failing. Check the CodeBuild test reports for details.