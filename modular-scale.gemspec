require './lib/modular-scale'

Gem::Specification.new do |s|
  # Release Specific Information
  s.version = ModularScale::VERSION
  s.date = ModularScale::DATE

  # Gem Details
  s.name = "modular-scale"
  s.description = %q{Sassy Modular Scale calculates the incremental values of the modular scale.}
  s.summary = %q{Sassy Modular Scale calculates the incremental values of the modular scale in proportion to a set size and ratio. Inspired by and adapted from Tim Brown's modularscale.com.}
  s.authors = ["Scott Kellum", "Adam Stacoviak", "Mason Wendell"]
  s.email = ["scott@treesaver.net", "adam@stacoviak.com", "mason@zivtech.com"]
  s.homepage = "https://github.com/scottkellum/modular-scale"

  # Gem Files
  s.files = ["README.mdown"]
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/_modular-scale.sass")

  # Gem Bookkeeping
  s.required_rubygems_version = ">= 1.3.6"
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("compass", [">= 0.11.5"])
end