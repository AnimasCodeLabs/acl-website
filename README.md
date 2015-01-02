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

### Environment variables

You can set the following environment variables

    GA_TRACKING_ID=<Google analytics tracking id>
    ASSET_HOST=<The url to the asset host for this application>

## License

This site is copyright Animas Code Labs 2013-2015. All Rights Reserved. Photos are licensed use of Animas Code Labs only.
