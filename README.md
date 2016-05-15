## What's this?
This is the Devnology website, as (soon) deployed at <http://devnology.nl>.

## Usage


### Dependencies & setting up
- Install Ruby in any way you see fit, on a Mac run `brew install rbenv ruby-build & rbenv install 2.2.3`.
- Install PostgreSQL, on a Mac run `brew install postgresql`<sup>1</sup>.
- Clone this repository.
- Run `./script/bundler` to install all gems needed by this application.

#### notes

1. PostgreSQL needs to be installed otherwise the `pg` gem can not be installed. `pg` depends on header files that are provided by and specific to PostgreSQL.

### Running the server
Remember to update the development database,

    rake db:migrate RAILS_ENV=development

Then, run

    rails server

and visit <http://localhost:3000>.


### Running the tests

    ./script/ci

### Deployment

    cap production deploy


## Contributing
If you believe you found a bug, feel free to create an [issue](https://github.com/devnology/website/issues), and if you can fix it, create a [pull request](https://help.github.com/articles/creating-a-pull-request/) for it!
