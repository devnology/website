## What's this?
This is the Devnology website, as (soon) deployed at <http://devnology.nl>.

## Usage


### Dependencies & setting up
- Install Ruby in any way you see fit.
- run `bundle install` to install all gems needed by this application.


### Running the server
Remember to update the development database,

    rake db:migrate RAILS_ENV=development

Then, run

    rails server

and visit <http://localhost:3000>.


### Running the tests
First up, remember to update your test database using

    rake db:migrate RAILS_ENV=test

Then, run the features using

    spinach

### Deployment
...


## Contributing
If you believe you found a bug, feel free to create an [issue](https://github.com/devnology/website/issues), and if you can fix it, create a [pull request](https://help.github.com/articles/creating-a-pull-request/) for it!
