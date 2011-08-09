# tint and shade are better than lighten and darken

module Sass::Script::Functions

  # Mixes a color with white to the dilution indicated by percentage
  def modular-scale(property, multiple, base-size, ratio)
    # $modular-scale: $base-size
    # @if $multiple > 0
    #   @for $i from 1 through $multiple
    #     $modular-scale: $modular-scale * $ratio
    # @if $multiple < 0
    #   @for $i from 1 through ($multiple * -1)
    #     $modular-scale: $modular-scale / $ratio
    # #{$property}: $modular-scale
    if multiple.value == "0"
    if multiple.value > "0"
    if multiple.value < "0"
    end
  end

end