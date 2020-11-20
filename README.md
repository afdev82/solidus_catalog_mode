# Solidus Catalog Mode

[![CircleCI](https://circleci.com/gh/afdev82/solidus_catalog_mode.svg?style=shield)](https://circleci.com/gh/REPO_ORG/solidus_catalog_mode)
[![codecov](https://codecov.io/gh/afdev82/solidus_catalog_mode/branch/master/graph/badge.svg)](https://codecov.io/gh/REPO_ORG/solidus_catalog_mode)

This gem adds a boolean field to the products and to the stores.
In this way you could set a single product or the complete store to be in "catalog mode".
Then in your store frontend you can use this information to disable the link to the cart,
the price and the cart form in the product page.

## Installation

Add solidus_catalog_mode to your Gemfile:

```ruby
gem 'solidus_catalog_mode'
```

Bundle your dependencies and run the installation generator:

```shell
bin/rails generate solidus_catalog_mode:install
```

## Usage

Set the flag in the product details page in the admin to enable catalog mode for the single product.
To enable the catalog mode for the entire store, just set the same flag in the store edit page.

## Dependencies

If you want to be able to set the flag for the stores in the backend, it requires the [solidus_multi_domain](https://github.com/solidusio/solidus_multi_domain) gem.

## Development

### Testing the extension

First bundle your dependencies, then run `bin/rake`. `bin/rake` will default to building the dummy
app if it does not exist, then it will run specs. The dummy app can be regenerated by using
`bin/rake extension:test_app`.

```shell
bin/rake
```

To run [Rubocop](https://github.com/bbatsov/rubocop) static code analysis run

```shell
bundle exec rubocop
```

When testing your application's integration with this extension you may use its factories.
Simply add this require statement to your spec_helper:

```ruby
require 'solidus_catalog_mode/factories'
```

### Running the sandbox

To run this extension in a sandboxed Solidus application, you can run `bin/sandbox`. The path for
the sandbox app is `./sandbox` and `bin/rails` will forward any Rails commands to
`sandbox/bin/rails`.

Here's an example:

```
$ bin/rails server
=> Booting Puma
=> Rails 6.0.2.1 application starting in development
* Listening on tcp://127.0.0.1:3000
Use Ctrl-C to stop
```

### Updating the changelog

Before and after releases the changelog should be updated to reflect the up-to-date status of
the project:

```shell
bin/rake changelog
git add CHANGELOG.md
git commit -m "Update the changelog"
```

### Releasing new versions

Your new extension version can be released using `gem-release` like this:

```shell
bundle exec gem bump -v 1.6.0
bin/rake changelog
git commit -a --amend
git push
bundle exec gem release
```

## License

Copyright (c) 2017 Antonio Facciolo, released under the New BSD License.
