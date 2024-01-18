# Circle +W Advance IT Skill Program Class 5 Assignments

## Task 1: Bash script to automate file/folder upload on github
### Command to run:
bash backend.sh

## Task 2: Bash script to automate create, build, and run docker commands
### Command to run:
bash docker.sh

## Task 3 (a): Deploy Django Application on AWS
### Step 1

Push existing local code repo to the remote repository OR use already pushed repository
In this task following repo is used:
https://github.com/hamza1100/monthly-challenges

### Step 2
Create an EC2 instance and make sure to create a .pem key to connect to the instance via SSH.

### Step 3
Use the .pem key to SSH into the server
Use the following command
ssh -i "file_name.pem" ec2-user@ec2-18-116-162-235.us-east-2.compute.amazonaws.com

### Step 4
Clone the repository into the EC2 instance
git clone https://github.com/hamza1100/monthly-challenges

### Step 5 Install the necessary dependencies
sudo yum install python3
sudo yum install python3-pip
pip3 install Django

### Step 6
Update the Inbound rules of the running instance from the security group section and add the port on which your app is running
In our case, it is 8004

### Step 7
Run the migrations if there is any model generate
python3 manage.py migrate

Then run the server
python3 manage.py runserver 0.0.0.0:8004

![image](https://github.com/hamza1100/Circle-W-AdvanceITSkillProgram-Class-5-Assignments/assets/14037952/fcf550f8-3b4e-48a8-9948-4de0b5cf8b5f)

![image](https://github.com/hamza1100/Circle-W-AdvanceITSkillProgram-Class-5-Assignments/assets/14037952/847d0110-9ff2-49f3-842b-152714e7d73b)


## Task 3 (b): Deploy Django Application on AWS using Docker
### Step 1
Install Docker and its dependencies
sudo yum install docker

### Step 2
Create a bash script to automate the image creation and running the container

![image](https://github.com/hamza1100/Circle-W-AdvanceITSkillProgram-Class-5-Assignments/assets/14037952/d5e7c3f9-42df-4f09-a56c-de3007a45afa)


### Step 3
Execute the bash script
bash docker-deploy.sh

![image](https://github.com/hamza1100/Circle-W-AdvanceITSkillProgram-Class-5-Assignments/assets/14037952/6cd6f5be-b401-494d-b925-021d28ff0b9c)

The App should be up and running on docker.

![image](https://github.com/hamza1100/Circle-W-AdvanceITSkillProgram-Class-5-Assignments/assets/14037952/e4fe3faf-5b98-4bec-bab9-34982e3a77dc)
