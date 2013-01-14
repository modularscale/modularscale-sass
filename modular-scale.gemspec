# Replace extension with the name of your extension's .rb file
require './lib/modular-scale'

Gem::Specification.new do |s|
  # Release Specific Information
  #  Replace Extension with the name you used in your extension.rb
  #   in the mdodule with version and date.
  s.version = ModularScale::VERSION
  s.date = ModularScale::DATE

  # Gem Details
  s.name = "modular-scale"
  s.description = %q{Sassy Modular Scale calculates the incremental values of the modular scale}
  s.summary = %q{Sassy Modular Scale calculates the incremental values of the modular scale in proportion to a set size and ratio. Inspired by and adapted from Tim Brown's modularscale.com.}
  s.authors = ["Scott Kellum", "Adam Stacoviak", "Mason Wendell"]
  s.email = ["scott@scottkellum.com", "adam@stacoviak.com", "mason@canarypromo.com"]
  s.homepage = "https://github.com/scottkellum/modular-scale"

  # Gem Files
  
  # README file
  s.files = ["readme.md"]

  # Library Files
  s.files += Dir.glob("lib/**/*.*")
  
  # Sass Files
  s.files += Dir.glob("stylesheets/**/*.*")
  
  # Template Files
  # s.files += Dir.glob("templates/**/*.*")

  # Gem Bookkeeping
  # Versions of Ruby and Rubygems you require
  s.required_rubygems_version = ">= 1.3.6"
  s.rubygems_version = %q{1.3.6}

  # Gems Dependencies
  # Gem names and versions that are required for your Compass extension.
  # These are Gem dependencies, not Compass dependencies. Including gems
  #  here will make sure the relevant gem and version are installed on the
  #  user's system when installing your gem.
  s.add_dependency("sass",       [">=3.2.0"])
  s.add_dependency("compass",    [">= 0.12.1"])
  s.add_dependency("sassy-math", [">= 1.5"])
end
