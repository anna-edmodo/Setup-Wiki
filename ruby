Install Nodejs First via NVM
  sudo apt-get install build-essential libssl-dev curl git-core
  git clone git://github.com/creationix/nvm.git ~/.nvm
  nvm install v0.6.18


Install Ruby (For Ubuntu 13 and below) using RVM
    sudo apt-get install ruby

  Setting up curl with proper SSL permissions
    gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3  
    sudo apt-get install libgdbm-dev libncurses5-dev automake libtool bison libffi-dev
    curl http://curl.haxx.se/ca/cacert.pem > .cacert.pem
    export SSL_CERT_FILE=/home/prod/.cacert.pem

    sudo apt-get install apt-file
    apt-file search /etc/ssl/certs/ca-certificates.crt
    sudo update-ca-certificates
    sudo c_rehash  

  Install rvm - using root or ubuntu account
    curl -L https://get.rvm.io | bash -s stable

  Setup Environmental in ~/.bashrc
    [[ -s "$HOME/.rvm/scripts/rvm" ]] && . "$HOME/.rvm/scripts/rvm"  # This loads RVM

  Update rvm
    rvm get stable

  Upgrading Ruby
    sudo rvm install 2.1.1

  Use Ruby version
    rvm use ruby-2.1.1


Installing for Ubuntu 14.0.4
    sudo apt-get install ruby
    wget http://cache.ruby-lang.org/pub/ruby/2.1/ruby-2.1.1.tar.gz
    tar xzfv ruby-2.1.1.tar.gz
    cd ruby-2.1.1
    ./configure –-with-readline-dir=/usr/lib/x86_64-linux-gnu/libreadline.so
    sudo make && sudo make install

  updating the .bashrc file
    export RBENV=2.1.1

Install Libraries
  sudo gem install rails  --no-ri --no-rdoc
  sudo gem install bundler  --no-ri --no-rdoc

Upgrading Ruby
  sudo rvm install 2.1.1

Use Ruby version
  rvm use 2.1.1

Install Libraries
  sudo gem install rails

  sudo gem install mysql2 #If wrong version of MySql install aka (bit and x) then when mysql2 is install will cause error

Insert configuration into .bashrc
  export DYLD_LIBRARY_PATH=/usr/local/mysql/lib:$DYLD_LIBRARY_PATH

Create a new project
  rails new project_name

Make connection to mysql server and create database
  rake db:create

Start server
  rails server
  rails server -e production -p 3000

Create a Resource (that represents Object in this Application)
  rails generate scaffold Post name:string title:string content:text

Create a mysql table that represents the Resouce (one created above)
  rake db:migrate

Change / Update table schema
  rails destroy scaffold Posts
  rails generate scaffold Posts name:string title:string content:text newfield:string newfield2:string
  rails db:migrate

Install process handler
  sudo gem install passenger

Porting of existing installation over to new server
  git pull ..
  sudo apt-get install libcurl4-openssl-dev
  sudo gem install unicorn
  bundle install

In production environment
  rake db:migrate RAILS_ENV="production" 

Start process in foreground
  unicorn -p 3000  

Start process in background
  unicorn -D -p 3000

Start process in background in production environment at port 3002
  unicorn -D -p 3002 -E production
  rails server -e production -p 3002 -d

Stop process running in background
  sudo kill <process_id>

Update all the routes in the application
  rake routes

======================================= devise ============================================
rails generate devise:install
rails generate devise users
rails generate devise:views
rails generate devise:views users

# Add listing pages to members
rails rails g controller users listing

# Add detail pages to members
rails rails g controller users show


rake routes

# Add user name to user object
rails g migration add_username_to_users name:string

rake db:migrate

Create user
------------------
> user = User.new
> user.email = "anyemail@ddress.com"
> user.password = "test1234"
> user.save
> user.add_role "admin"

Assign role to user
------------------
> ability = Ability.new(user)
> ability.can? :manage, :all
  => true

Find user 
------------------
user = User.find #id

========================== Creating new roles with rolify and cancan =======================
sudo gem install cancan
sudo gem install rolify
#Add cancan and rolify in GemFile
rails generate cancan:ability

rails generate rolify:role
# For more specific application
  rails g rolify:role Role Member

rake db:migrate

========================= Viewing documentation ===================================
gem server

======================== Rails console ============================================

rails console test
rails console production
rails console development

Using help
User help
Method name to show how to use it

List all methods belonging to object
  User.methods

List all properties belonging to object
  User

Testing
======
binding.pry # breaks the code there
, :focus # to test only one test case

====================== Rspec ============================
Files are located in the spec folder

===================== Seeds ==========================
Automatically populated a database using CSV files provided
to insert functions to call at <<project_location>>/db/seeds.rb
to add my_rake_file.rake at <<project_location>>/lib/tasks/my_rake_file.rake

==================== Editing Gems ====================
export EDITOR="subl"
bundle open sidekiq-unique-jobs


==================== Updating RVM ====================
```
# Updating Rvm
rvm get stable

# Updating certificates
rvm osx-ssl-certs update all
```