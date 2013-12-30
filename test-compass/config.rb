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

    # Convert to native ruby things
    rvalue  = value.value.to_i

    if bases.class == Sass::Script::Number
      bases  = [] << bases
    else
      bases  = bases.value.to_a
    end
    if ratios.class == Sass::Script::Number
      ratios = [] << ratios
    else
      ratios = ratios.value.to_a
    end

    # Convert items in arrays to floating point numbers
    rbases  = []
    rratios = []
    bases.each do |num|
      rbases << num.value.to_f
    end
    ratios.each do |num|
      rratios << num.value.to_f
    end


    # Blank array for return
    r = [rbases[0]]

    # loop through all possibilities
    # NOTE THIS IS NOT FULLY FUNCTIONAL YET
    # ONLY LOOPS THROUGH SOME/MOST OF THE POSSIBILITES
    
    rbases.each do |base|
      rratios.each do |ratio|

        # Find values on a positive scale
        if rvalue > 0
          # Find lower values on the scale
          i = -1;
          while ((ratio ** i) * base) >= (rbases[0])
            r << (ratio ** i) * base
            i = i - 1;
          end

          # Find higher possible values on the scale
          i = 1;
          while ((ratio ** i) * base) <= ((ratio ** rvalue) * base)
            r << (ratio ** i) * base
            i = i + 1;
          end

        else

          # Find lower values on the scale
          i = 1;
          while ((ratio ** i) * base) <= (rbases[0])
            r << (ratio ** i) * base
            i = i + 1;
          end

          # Find higher possible values on the scale
          i = -1;
          while ((ratio ** i) * base) >= ((ratio ** rvalue) * base)
            r << (ratio ** i) * base
            i = i - 1;
          end
        end

      end
    end

    # Sort and trim
    r.sort!
    r.uniq!

    if rvalue < 0
      r = r.keep_if { |a| a <= rbases[0] }
      r.reverse!
    end

    # Final value
    r = r[rvalue]

    Sass::Script::Number.new(r)
  end
end