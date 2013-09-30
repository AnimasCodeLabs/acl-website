# Animas Code Labs Public website

This is the public website for Animas Code Labs.

## Setup instructions

Run the following  commands to get the project going

````shell
$ bundle
$ cp config/database-example.yml config/database.yml
# Edit the database.yml to include the appropriate user
$ rake db:setup db:test:prepare
$ rake
````
