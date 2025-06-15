# Simple HTML Deployment on Apache Server (AWS EC2)

This project demonstrates how to deploy a static HTML page on an Apache server running on an Ubuntu-based EC2 instance.

## 🔧 Requirements
- AWS EC2 Ubuntu instance
- SSH key (.pem file)
- Git and SCP installed locally

## 🚀 Deployment Steps

1. Launch an EC2 Ubuntu instance
2. SSH into the instance:
   ```bash
   ssh -i "your_key.pem" ubuntu@your-ec2-public-ip

 # Copy HTML file to EC2 instance locally 
   scp -i "your_key.pem" <project-name> ubuntu@your-ec2-public-ip:~

 # move to EC2 apache server
 sudo mv <project-name> /var/www/html/index.html
