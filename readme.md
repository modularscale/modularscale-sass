# Sassy Modular Scale

## Put down the calculator and let Sass do the work.

Sassy Modular Scale is a Sass based mixin that calculates the incremental values of the modular scale in proportion to a set size and ratio. It was inspired by and adapted from Tim Brown's modularscale.com.

Sassy Modular Scale can be used as a [Compass](http://compass-style.org/) [extension](http://compass-style.org/help/tutorials/extensions/) and can be installed as a [Ruby gem](https://rubygems.org/gems/modular-scale).

## Installation

Usage requires Sass. Visit [sass-lang.com](http://sass-lang.com) to learn more and install.

`gem install modular-scale`

Add `require 'modular-scale'` to your Compass config file.

Import the file into your stylesheets: `@import 'modular-scale';`

## Usage

Modular-scale is used as a function. Simply pass it through in place of any value to generate a value based on a modular scale.

```scss
width: modular-scale(2); // two up the modular scale
width: ms(2); // Shorthand for the line above
width: modular-scale(2, 1em); // two up the modular scale with a base size of 1em
width: modular-scale(2, 1em, octave() ); // Same as above but on an octave scale
```

You can output a list to your terminal to help you find out what values are on your scale.

```scss
@include modular-scale-list($start, $end, $base-size, $ratio);
```

By default, it writes 0-20 on the scale. You can also use shorthand to make things more efficient.

```scss
@include ms-list; // shorthand without attributes
@include ms-list($start, $end, $base-size, $ratio); // shorthand with attributes
```

You can also write the output to your CSS file if you are using the terminal:

```scss
@include ms-list-output($start, $end, $base-size, $ratio);
```

As a side effect of the modular-scale functions a `power` function is also available.

```scss
@include power($base, $power);
```

Sassy Modular Scale can be used as a function, like so:

```scss
// Use as a function. Fill in the multiple, base-size, and ratio
height: modular-scale(7, 16px, golden() );
```



You can also 'lace' multiple ratios together by passing them in as a list (space-separated)

```scss
.lace {
  width: ms(7, 16px, golden() fourth() );
}
```

You can also set the $base-size variable to a list to interrelate two significant known sizes in your design
*note:* the starting point of the scale will always be the *lowest* value in this list

```scss
.multibases {
  width: ms(7, 16px 300px, golden() );
}
```

You can use multiple $base-sizes and multiple $ratios together

```scss
.multibase-multiratio {
  width: ms(7, 16px 300px, golden() fourth() );
}
```

## Ratios

Modular scale includes functions for a number of classic design and musical scale ratios. You can add your own ratios as well.

By default, the variable `$ratio` is set to `golden()`.

<table>

  <tr><th>Function</th><th>Ratio</th><th>Decimal value</th></tr>

  <tr><td>golden()</td><td>1:1.618</td><td>1.618</td></tr>
  <tr><td>double-octave()</td><td>1:4</td><td>4</td></tr>
  <tr><td>major-twelfth()</td><td>1:3</td><td>3</td></tr>
  <tr><td>major-eleventh()</td><td>3:8</td><td>2.667</td></tr>
  <tr><td>major-tenth()</td><td>2.5</td><td>2:5</td></tr>
  <tr><td>octave()</td><td>1:2</td><td>2</td></tr>
  <tr><td>major-seventh()</td><td>8:15</td><td>1.875</td></tr>
  <tr><td>minor-seventh()</td><td>9:16</td><td>1.778</td></tr>
  <tr><td>major-sixth()</td><td>3:5</td><td>1.667</td></tr>
  <tr><td>minor-sixth()</td><td>5:8</td><td>1.6</td></tr>
  <tr><td>fifth()</td><td>2:3</td><td>1.5</td></tr>
  <tr><td>augmented-fourth()</td><td>1:√2</td><td>1.414</td></tr>
  <tr><td>fourth()</td><td>3:4</td><td>1.333</td></tr>
  <tr><td>major-third()</td><td>4:5</td><td>1.25</td></tr>
  <tr><td>minor-third()</td><td>5:6</td><td>1.2</td></tr>
  <tr><td>major-second()</td><td>8:9</td><td>1.125</td></tr>
  <tr><td>minor-second()</td><td>15:16</td><td>1.067</td></tr>

</table>

Add your own ratio in Sass by setting a variable and passing that to modular-scale.

```scss
$my-variable: 1 / 3.14159265;
$ratio: $my-variable;
```

## Inspiration

Sassy Modular Scale was adapted from [modularscale.com](http://modularscale.com/) by Tim Brown ([@nicewebtype](http://twitter.com/nicewebtype)). Tim also wrote a supporting article at [A List Apart](http://www.alistapart.com/) titled ["More Meaningful Typography"](http://www.alistapart.com/articles/more-meaningful-typography/). Additional inspiration goes to [Robert Bringhurst](http://en.wikipedia.org/wiki/Robert_Bringhurst), author of ["The Elements of Typographic Style"](http://en.wikipedia.org/wiki/The_Elements_of_Typographic_Style) - specifically Chapter 8 titled "Shaping the Page"

## License

Copyright (c) 2011 [Scott Kellum](http://www.scottkellum.com/) ([@scottkellum](http://twitter.com/scottkellum)), [Adam Stacoviak](http://adamstacoviak.com/) ([@adamstac](http://twitter.com/adamstac)) and [Mason Wendell](http://thecodingdesigner.com/) ([@codingdesigner](http://twitter.com/codingdesigner))

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
