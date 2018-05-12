# All gems that are required for this extension to work should go here.
# These are the requires you would normally put in your config.rb file
# By default, you should always included Compass. Do not include your
#  extension.
require 'compass'

# This tells Compass what your Compass extension is called, and where to find
#  its files
extension_path = File.expand_path(File.join(File.dirname(__FILE__), ".."))
Compass::Frameworks.register('modular-scale', :path => extension_path)

# Version and date of version for your Compass extension.
# Replace ModularScale with the name of your extension
#  Letters, numbers, and underscores only
#  Version is a number. If a version contains alphas, it will be created as
#    a prerelease version
#  Date is in the form of YYYY-MM-DD
module ModularScale
  VERSION = "3.0.5"
  DATE = "2018-01-23"
end

# This is where any custom SassScript should be placed. The functions will be
#  available on require of your extension without the need for users to import
#  any partials. Uncomment below.

module Sass::Script::Functions

  # Let modularscale know that this was installed via Compass
  def ms_gem_installed()
    Sass::Script::Bool.new(true)
  end

end