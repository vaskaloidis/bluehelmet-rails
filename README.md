# Bluehelmet

## Getting Started

After you have cloned this repo, run this setup script to set up your machine
with the necessary dependencies to run and test this app:

    % ./bin/setup

It assumes you have a machine equipped with Ruby, Postgres, etc. If not, set up
your machine with [this script].

[this script]: https://github.com/thoughtbot/laptop

After setting up, you can run the application using [Heroku Local]:

    % heroku local

[Heroku Local]: https://devcenter.heroku.com/articles/heroku-local

## Template

The template is zipped in the root dir as Particles - Personal + Agency..

The Index file we are using is in the HTML/index-test-rotater.html or in our root dir as TEMPLATE-index-text-rotater.html

### Work Complete
- Transfered all Javascript files to /app/assets/javscripts
- Transfered Stylesheets to /app/assets/stylesheets
- Created a Main Controller, and an Index action in the controller
- I created the route so the homepage automatically loads Main#Index
- I copied the top-portion and bottom-portion of the template into /app/views/layouts.html.erb (the header and footer)
- I converted all <script> tags and <stylesheet> tags to use the Rails helper tag generator - these create the javascript and stylesheet tags - read more about them by googling them and looking at api-dock for the API
- I moved the center part of the template to the index.html.erb file - so its loaded when the home-page is loaded

### Tasks
- Test everything and get everything working
- You might need to go through some stylesheet files and javscript files and modify URL's and Paths to use the Rails helper URL's as well as any image tags - here is the documentation with all the Rails Helpers 
http://guides.rubyonrails.org/asset_pipeline.html#css-and-erb
- Possibly figure out how we can deploy this to my home-server for free and how we can host Rails apps on it for free - it has Docker and we can both use it - so possibly figure it out. 

## Deploying

If you have previously run the `./bin/setup` script,
you can deploy to staging and production with:

    $ ./bin/deploy staging
    $ ./bin/deploy production
