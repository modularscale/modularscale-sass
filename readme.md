# Modular Scale

### This is v2.0 documentation, Go to [v1.0 documentation here](https://github.com/Team-Sass/modular-scale/blob/1.x/readme.md)

A modular scale is a list of values that share the same relationship. These values are often used to size type and create a sense of harmony in a design. Proportions within modular scales are all around us from the spacing of the joints on our fingers to branches on trees. These natural proportions have been used since the time of the ancient Greeks in architecture and design and can be a tremendously helpful tool to leverage for web designers.

Ems work especially well with modular scales as their recursive properties mimic modular scales making them more predictable and easier to manage. Pixels and other units work just fine and breakpoints in responsive web design can naturally fall on your scale to create better relevance to your text as all the values in your layout harmonize with each other.

To get started, you need to select a ratio and a base value. The base value is usually your text font size or 1em. Optionally you can add another value to create a double standard modular scale which might be useful to create more options for in-between values. This base size paired with a ratio such as the golden ratio or any musical proportion will create your scale of values which all share this proportion.

## Install

### Compass

* Terminal: `gem install modular-scale --pre`
* Compass config: `require 'modular-scale'`
* SCSS: `@import 'modular-scale';`

### Bower

* Terminal: `bower install modular-scale`
* SCSS: `@import '../link_to_component_dir/modular-scale';`

### Vanilla Sass

* [Download the latest zip](https://github.com/Team-Sass/modular-scale/releases/latest)
* Extract into your project
* SCSS: `@import 'modular-scale';`

## Compatibility

I have been working incredibly hard to make Modular Scale compatible with multiple versions of Sass. As a result, it will work and has been tested in **Libsass**, **Sass 3.2**, and **Sass 3.3**.

These are dramatically different environments so things may have slight differences. **[For best results, install via the gem with Compass](https://github.com/Team-Sass/modular-scale/tree/2.x#compass)**.

* **Compass + Sass (best):**
  * non-integer values work with the `ms()` function.
  * Significant speed increases as the gem does calculations natively in Ruby
* **Libsass:**
  * Can hang when using multiple bases and ratios.
* **Vanilla Sass:**
  * Possibly slow when using multiple bases and ratios.

## Usage

Modular Scale has two default variables that you should place with your other site wide variables. `$ms-base` is usually your font size or `1em` and can have multiple values. `$ms-ratio` is the factor of change between each number so if the ratio is `1.5` then each number in the sequence will be 1.5 times that of the previous number. Just as you can have multiple bases you can have multiple ratios.

```scss
$ms-base: 1em;
$ms-ratio: $golden;
```

Modular-scale is used as a function. Simply pass it through in place of any value to generate a value based on a modular scale.

```scss
font-size: ms(2); // two up the modular scale
font-size: ms(2, 16px); // two up the modular scale with a base size of 16px, default is 1em
font-size: ms(2, 1em, $octave); // Same as above but on an octave scale
```

You can output a list to your terminal to help you find out what values are on your scale.

```scss
@debug ms-list($start, $end, $ms-base, $ms-ratio);
```

You can use a double standard scale by simply adding more base sizes in a space-sepreated list.
**note:** the starting point of the scale will always be the **first** value in this list

```scss
.double-standard {
  width: ms(7, 1em 2em);
}
```

You can do the same thing with ratios

```scss
.multi-ratio {
  width: ms(7, 1em, $golden $octave);
}
```

You can use multiple $ms-bases and multiple $ms-ratio together

```scss
.multibase-multiratio {
  width: ms(7, 16px 24px, $golden $fourth);
}
```

## Ratios

Modular scale includes functions for a number of classic design and musical scale ratios. You can add your own ratios as well.

By default, the variable `$ms-ratio` is set to `$golden`.

<table>

  <tr><th>Function</th><th>Ratio</th><th>Decimal value</th></tr>

  <tr><td>$phi</td><td>1:1.618</td><td>1.618</td></tr>
  <tr><td>$golden</td><td>1:1.618</td><td>1.618</td></tr>
  <tr><td>$double-octave</td><td>1:4</td><td>4</td></tr>
  <tr><td>$major-twelfth</td><td>1:3</td><td>3</td></tr>
  <tr><td>$major-eleventh</td><td>3:8</td><td>2.667</td></tr>
  <tr><td>$major-tenth</td><td>2:5</td><td>2.5</td></tr>
  <tr><td>$octave</td><td>1:2</td><td>2</td></tr>
  <tr><td>$major-seventh</td><td>8:15</td><td>1.875</td></tr>
  <tr><td>$minor-seventh</td><td>9:16</td><td>1.778</td></tr>
  <tr><td>$major-sixth</td><td>3:5</td><td>1.667</td></tr>
  <tr><td>$minor-sixth</td><td>5:8</td><td>1.6</td></tr>
  <tr><td>$fifth</td><td>2:3</td><td>1.5</td></tr>
  <tr><td>$augmented-fourth</td><td>1:√2</td><td>1.414</td></tr>
  <tr><td>$fourth</td><td>3:4</td><td>1.333</td></tr>
  <tr><td>$major-third</td><td>4:5</td><td>1.25</td></tr>
  <tr><td>$minor-third</td><td>5:6</td><td>1.2</td></tr>
  <tr><td>$major-second</td><td>8:9</td><td>1.125</td></tr>
  <tr><td>$minor-second</td><td>15:16</td><td>1.067</td></tr>

</table>

Add your own ratio in Sass by setting a variable and passing that to modular-scale.

```scss
$my-ratio: 1 / 3.14159265;
$ms-ratio: $my-ratio;
```

## [Changelog](https://github.com/Team-Sass/modular-scale/releases)

## Inspiration

Sassy Modular Scale was adapted from [modularscale.com](http://modularscale.com/) by Tim Brown ([@nicewebtype](http://twitter.com/nicewebtype)). Tim also wrote a supporting article at [A List Apart](http://www.alistapart.com/) titled ["More Meaningful Typography"](http://www.alistapart.com/articles/more-meaningful-typography/). Additional inspiration goes to [Robert Bringhurst](http://en.wikipedia.org/wiki/Robert_Bringhurst), author of ["The Elements of Typographic Style"](http://en.wikipedia.org/wiki/The_Elements_of_Typographic_Style) - specifically Chapter 8 titled "Shaping the Page"

## MIT License

Copyright (c) 2011 [Scott Kellum](http://www.scottkellum.com/) ([@scottkellum](http://twitter.com/scottkellum)), [Adam Stacoviak](http://adamstacoviak.com/) ([@adamstac](http://twitter.com/adamstac)) and [Mason Wendell](http://thecodingdesigner.com/) ([@codingdesigner](http://twitter.com/codingdesigner))

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the "Software"), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
