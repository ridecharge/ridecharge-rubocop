# Ridecharge::Rubocop

Our company's syntax guide, in tool form.

## Installation

Add this line to your application's Gemfile:

    gem 'ridecharge-rubocop', '0.0.1'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ridecharge-rubocop

## Usage

Run ridecharge-rubocop in .travis.yml to check your application against our current syntax guide.

`config/0default.yml` is the entrypoint.

`config/tabs.yml` shows an example setting.

## Contributing

1. Make a new branch, with your requested change.
2. Make a pull request with some reasoning. Get at least 3 :+1:'s.
3. Bump the version before merging your pull request.
4. Run `rake release` in a local checkout of this repository to push the updated gem version to rubygems.
5. Make an Issue with a todo for each name of all the applications which are not yet updated.
6. Make pull requests in each app to update the ridecharge-rubocop version. Change any offenses.
7. Merge and deploy the pull requests in each of the organization's apps.
