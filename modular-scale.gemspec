# Replace extension with the name of your extension's .rb file
require './lib/modular-scale'

Gem::Specification.new do |s|
  # Release Specific Information
  s.version = ModularScale::VERSION
  s.date = ModularScale::DATE

  # Gem Details
  # Replace "modular-scale" with the name of your extension
  s.name = "modular-scale"
  s.rubyforge_project = "modular-scale"
  # Description of your extension
  s.description = %q{A generalized Compass extension to build off of}
  # A summary of your Compass extension. Should be different than Description
  s.summary = %q{An easy to use system for writing and managing media queries.}
  # The names of the author(s) of the extension.
  # If more than one author, comma separate inside of the brackets
  s.authors = ["First Last"]
  # The email address(es) of the author(s)
  # If more than one author, comma separate inside of the brackets
  s.email = ["firstlast@extension.com"]
  # URL of the extension
  s.homepage = "http://extension.com"

  # Gem Files
  # These are the files to be included in your Compass extension.
  # Uncomment those that you use.

  # README file
  s.files = ["readme.md"]

  # CHANGELOG
  s.files += ["changelog.md"]

  s.license = "MIT"
  
  s.files = ["license.md"]

  # Library Files
  s.files += Dir.glob("lib/**/*.*")

  # Sass Files
  s.files += Dir.glob("stylesheets/**/*.*")

  # Template Files
  s.files += Dir.glob("templates/**/*.*")

  # Gem Bookkeeping
  # Versions of Ruby and Rubygems you require
  s.required_rubygems_version = ">= 1.3.6"
  s.rubygems_version = %q{1.3.6}

  # Gems Dependencies
  # Gem names and versions that are required for your Compass extension.
  # These are Gem dependencies, not Compass dependencies. Including gems
  #  here will make sure the relevant gem and version are installed on the
  #  user's system when installing your gem.
  s.add_dependency("compass",   [">= 0.12.0"])
end