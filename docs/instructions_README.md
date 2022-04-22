# How to Install Locatable onto your VM or Local Machine

#### Step 1: Clone the Repository
* Login your githb and VM and create a new repository in the desired locations within the VM
    *Clone the new repositsory into a new branch using this format: "youinitals_lastname_locatable
      * Use the command git --switch <branch> or git --checkout <branch> 
    
#### Step 2: Go to Current Working Directory
* cd <repo_name>
After creating the empty repository, clone your Safe Routes branch into the repository by inputting the following commands into your terminal:

'git init'
'git remote add origin https://github.com/'
'git fetch'
'git branch -r' (this lists remote branch names)
'git checkout origin/branchName'
Installing dependencies

After cloning your branch, be sure to navigate to the "src" folder in your repository by inputting:

cd src

Once in the "src" folder, type the following commands to install the prerequisites:

'bundle install'
'yarn install'
'rails webpacker:install'
Once these have been successfully installed, type in the following commands to set up the database:

'rails db:create'
'rails db:migrate:reset'
'rails db:migrate'
'rails db:seed'
This application requires developers to create a Bing Maps Key. After creating the key, create a file in the src directory called .env, which will contain the following:


In order to run the web app, you first must find your VM's IP address by running the following command:

ip addr show eth0

After retrieving the IP address, you can finally run the server by running:

rails s (or rails server) --binding xxx.xxx.xxx.xxx

REMINDER: You will not be able to run the rails server unless you are in the src folder

The app should be available in the browser at http://csc415-serverXX.hpc.tcnj.edu:3000/ Where XX is replaced by your server number.

How to Push Changes

To push your changes into your corresponding branch you will need to enter the following:

'git status' (to show what changes have been made)
'git add changed_File'
'git commit -m “a description of what you did”'
'git push origin HEAD:your-branch-name' 
