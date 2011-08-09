Gem::Specification.new do |s|
  # Gem Details
  s.name = "modular-scale"
  s.authors = ["Scott Kellum"]
  s.summary = %q{a Modular scale for compass}
  s.description = %q{a Modular scale for compass}
  s.email = "scott@scottkellum.com"
  s.homepage = "http://scottkellum.com/"

  # Gem Files
  s.files += Dir.glob("lib/**/*.*")
  s.files += Dir.glob("stylesheets/**/*.*")
  s.files += Dir.glob("templates/**/*.*")

  # Gem Bookkeeping
  s.rubygems_version = %q{1.3.6}
  s.add_dependency("compass", [">= 0.11"])
end

