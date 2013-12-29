# Require any additional compass plugins here.
load "../modular-scale"
# require "modular-scale"

# Set this to the root of your project when deployed:
http_path = "/"
css_dir = "css"
sass_dir = "sass"
images_dir = "images"
javascripts_dir = "javascripts"

# to enbale relative paths to assets via compass helper functions.
# relative_assets = true
line_comments = false
output_style = :compact


module Sass::Script::Functions

  # Let MS know that extra functionality is avalible
  def ms_gem_installed()
    Sass::Script::Bool.new(true)
  end

  def ms_gem_func(value, bases, ratios)
    value = value.value.to_f
    puts bases
    Sass::Script::Number.new(value)
  end
end