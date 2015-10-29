# Instagram Challenge

This educational project is a work in progress.  The idea is to create an “Instagram clone.”

## Key Technologies Used

* Ruby
* Ruby on Rails
* PostgreSQL
* Heroku
* Amazon AWS S3

## Tests

Testing with RSpec and Capybara using FactoryGirl: `$ rspec`

## Status - Development

The app works locally, with AWS credentials stored in an ENV variable.  To run the app:

1) Create databases (test and development)
2) `$ rails s`
3) Visit http://localhost:3000

## Status - Production

The app works online.

## TODO

* Fix authorizations (for edit, destroy, etc.)
* More tests
* Design and implement "Like" feature
* Style and improve the interface
* Improve text used in the app and make it consistent
* Cleanup and refactor code
* Adjust AWS permissions (locked down as much as possible without breaking app)
