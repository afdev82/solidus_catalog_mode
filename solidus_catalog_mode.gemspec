# encoding: UTF-8
$:.push File.expand_path('../lib', __FILE__)
require 'solidus_catalog_mode/version'

Gem::Specification.new do |s|
  s.name        = 'solidus_catalog_mode'
  s.version     = SolidusCatalogMode::VERSION
  s.summary     = 'Allow to set products to not for online sale'
  s.description = 'Allow to set products only to show, but not for online sale (catalog mode)'
  s.license     = 'BSD-3-Clause'

  s.author    = 'Antonio Facciolo'
  s.email     = 'afdev82@gmail.com'
  s.homepage  = 'https://github.com/afdev82/solidus_catalog_mode'

  s.files = Dir["{app,config,db,lib}/**/*", 'LICENSE', 'Rakefile', 'README.md']
  s.test_files = Dir['test/**/*']

  s.add_dependency 'solidus_core', '~> 2.3'

  s.add_development_dependency 'capybara', '~> 0'
  s.add_development_dependency 'poltergeist', '~> 0'
  s.add_development_dependency 'coffee-rails', '~> 0'
  s.add_development_dependency 'sass-rails', '~> 0'
  s.add_development_dependency 'database_cleaner', '~> 0'
  s.add_development_dependency 'factory_bot', '~> 0'
  s.add_development_dependency 'rspec-rails', '~> 0'
  s.add_development_dependency 'rubocop', '0.37.2'
  s.add_development_dependency 'rubocop-rspec', '1.4.0'
  s.add_development_dependency 'simplecov', '~> 0'
  s.add_development_dependency 'sqlite3', '~> 0'
end
