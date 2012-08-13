require 'compass'
require 'sassy-math'
Compass::Frameworks.register("modular-scale", :path => "#{File.dirname(__FILE__)}/..")

# Modular Scale Functions
# module Sass::Script::Functions
# end

module ModularScale
  VERSION = "1.0.2"
  DATE = "2012-08-13"
end


# Modular Scale Sass Script
module Sass::Script
  class Number < Literal
    # Comparison
    def <=>(other)
      value <=> other.value
    end
  end
end

module Sass::Script::Functions
  # Modular Scale
  def double_octave
    value = 4 / 1.0
    Sass::Script::Number.new(value)
  end
  def major_twelfth
    value = 3 / 1.0
    Sass::Script::Number.new(value)
  end
  def major_eleventh
    value = 8 / 3.0
    Sass::Script::Number.new(value)
  end
  def major_tenth
    value = 5 / 2.0
    Sass::Script::Number.new(value)
  end
  def octave
    value = 2 / 1.0
    Sass::Script::Number.new(value)
  end
  def major_seventh
    value = 15 / 8.0
    Sass::Script::Number.new(value)
  end
  def minor_seventh
    value = 16 /9.0
    Sass::Script::Number.new(value)
  end
  def major_sixth
    value = 5 / 3.0
    Sass::Script::Number.new(value)
  end
  def minor_sixth
    value = 8 / 5.0
    Sass::Script::Number.new(value)
  end
  def fifth
    value = 3 / 2.0
    Sass::Script::Number.new(value)
  end
  def augmented_forth
    value = Math.sqrt(2) / 1.0
    Sass::Script::Number.new(value)
  end
  def fourth
    value = 4 / 3.0
    Sass::Script::Number.new(value)
  end
  def major_third
    value = 5 / 4.0
    Sass::Script::Number.new(value)
  end
  def minor_third
    value = 6 / 5.0
    Sass::Script::Number.new(value)
  end
  def major_second
    value = 9 / 8.0
    Sass::Script::Number.new(value)
  end
  def minor_second
    value = 16 / 15.0
    Sass::Script::Number.new(value)
  end

  # Lists
  def sort_list(list)
    sep = list.separator if list.is_a?(Sass::Script::List)
    list = list.to_a.sort
    Sass::Script::List.new(list, sep)
  end
  def reverse_list(list)
    sep = list.separator if list.is_a?(Sass::Script::List)
    list = list.to_a.reverse
    Sass::Script::List.new(list, sep)
  end
  def trim_list(list, threshold, ascending)
    # remove list items above or below a threshold
    sep = list.separator if list.is_a?(Sass::Script::List)
    list = list.to_a
    if ascending.value
      list = list.delete_if {
        |x| x.value <= threshold.value
      }
    else
      list = list.delete_if {
        |x| x.value >= threshold.value
      }
    end
    Sass::Script::List.new(list, sep)
  end
end
