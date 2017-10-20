# Modular Scale

A modular scale is a list of values that share the same relationship. These values are often used to size type and create a sense of harmony in a design. Proportions within modular scales are all around us from the spacing of the joints on our fingers to branches on trees. These natural proportions have been used since the time of the ancient Greeks in architecture and design and can be a tremendously helpful tool to leverage for web designers.

Ems work especially well with modular scales as their recursive properties mimic modular scales making them more predictable and easier to manage. Pixels and other units work just fine and breakpoints in responsive web design can naturally fall on your scale to create better relevance to your text as all the values in your layout harmonize with each other.

To get started, you need to select a ratio and a base value. The base value is usually your text font size or 1em. Optionally you can add another value to create a double stranded modular scale which might be useful to create more options for in-between values. This base size paired with a ratio such as the golden ratio or any musical proportion will create your scale of values which all share this proportion.

## Install

### Eyeglass

* Terminal: `npm install modularscale-sass --save-dev`
* SCSS: `@import 'modularscale'`

### Webpack with sass-loader

* Terminal: `npm install modularscale-sass --save-dev`
* Webpack config: install and use [sass-loader](https://github.com/jtangelder/sass-loader#apply-via-webpack-config)
* SCSS: `@import '~modularscale-sass/stylesheets/modularscale';`

### Bower

* Terminal: `bower install modular-scale --save-dev`
* SCSS: `@import '../link_to_component_dir/modularscale';`

### Vanilla Sass

* [Download the latest zip](https://github.com/modularscale/modularscale-sass/releases/latest)
* Extract into your project
* SCSS: `@import 'modularscale';`

### Compass (no longer being updated. Last release v3.0.2)

* Terminal: `gem install modular-scale --pre`
* Compass config: `require 'modular-scale'`
* SCSS: `@import 'modularscale';`

## Using modular scale

#### Initial setup and usage:

The first thing you’ll want to do when you start using modular scale is configure it to meet your needs. This is done in the `$modularscale` map.

```scss
$modularscale: (
  base: 1em,
  ratio: 1.5
);
```

You can use any unit you wish as your base and any ratio. Multiple bases can be defined for creating multi stranded scales. There is no limit here to the number of strands you use.

```scss
$modularscale: (
  base: 1em 1.2em 1.6em,
  ratio: 1.5
);
```

Now that we have defined your scale, we can start using it anywhere. Simply call the `ms(n)` function where `n` is the point on the scale.

```scss
h4 {
  font-size: ms(3);
}
```

Occasionally you may wind up with conflicts. All critical components are name-spaced to avoid conflicts with other libraries. If you do run into a conflict, `ms-function()` is the no-conflict function.

#### Multiple scale threads

Modular scale now supports different settings threads, so you can set up various threads to configure different ratios or breakpoints.

```scss
$modularscale: (
  base: 1em,
  ratio: 1.5,
  a: (
    ratio: 1.3
  )
);
```

To call the thread named `a`, call it in your function like so:

```scss
h5 {
  font-size: ms(2, $thread: a);
}
```

Your settings will cascade into the threads so no need to redefine a base or ratio if you want to re-use it from the main config.

If you wish to put breakpoints into your settings for use with responsive typography then there are helpers in place for this. Simply organize your config with breakpoint values from smallest to largest:

```scss
$modularscale: (
  base: 12px,
  ratio: 1.5,
  400px: (
    ratio: 1.2,
  ),
  900px: (
    base: 16px,
    ratio: 1.3,
  ),
  1200px: (
    base: 16px,
    ratio: 1.6,
  ),
);
```

_Note that you must use the same units for both your type and your breakpoints for this to work_

This technique is based on [Mike Riethmuller’s](https://twitter.com/MikeRiethmuller) [_Precise control over responsive typography_](http://madebymike.com.au/writing/precise-control-responsive-typography/). A fantastic technique for fluidly scaling typography.

Then, call the mixin `@include ms-respond();` and a fully fluid and responsive scale will be generated.

```scss
h2 {
  @include ms-respond(font-size,5);
}
```

If you do happen to have any values that are just named without numbers they will be ignored by the responsive mixin, it’s smart enough to just pull values that look like breakpoints.

Here is an [example page](http://skscratch.bitballoon.com/ms-demo) and the [corresponding Sass](https://github.com/modularscale/modularscale-sass/blob/3.x/test-compass/sass/style.scss).

#### Note on non-integer values

Unfortunately [Sass doesn’t natively support exponents](https://github.com/sass/sass/issues/684#issuecomment-196852515). This isn’t all bad news, you can use either use [Compass](http://compass-style.org/), [mathsass](https://github.com/terkel/mathsass), or another library that has a `pow()` function that supports non-integer values and this plugin will pick up on that function and use it. You will then be able to write values like `ms(2.5)`. This is also a prerequisite for _target sizes_ below.

#### Target sizes

_NOTE: Please see above section on non-integer values before using this feature_

One of the more difficult parts of setting up your scales is finding a ratio that works for you. In many cases you know what size you want your text to be and what size you want larger headings to be. The `at` helper allows you to plug in a target size into the ratio value and it will generate your ratio.

```scss
$modularscale: (
  base: 16px,
  ratio: 42at5
);
```

Now your base is `16px` and when you call `ms(5)` it will be `42px`. Everything in-between falls neatly on a scale created with these two values.

## Ratios

Modular scale includes functions for a number of classic design and musical scale ratios. You can add your own ratios as well.

By default ratio is set to `$fifth`.

<table>
  <tr><th>Function         </th><th>Ratio  </th><th>Decimal value</th></tr>
  <tr><td>$phi             </td><td>1:1.618</td><td>1.618        </td></tr>
  <tr><td>$golden          </td><td>1:1.618</td><td>1.618        </td></tr>
  <tr><td>$double-octave   </td><td>1:4    </td><td>4            </td></tr>
  <tr><td>$major-twelfth   </td><td>1:3    </td><td>3            </td></tr>
  <tr><td>$major-eleventh  </td><td>3:8    </td><td>2.667        </td></tr>
  <tr><td>$major-tenth     </td><td>2:5    </td><td>2.5          </td></tr>
  <tr><td>$octave          </td><td>1:2    </td><td>2            </td></tr>
  <tr><td>$major-seventh   </td><td>8:15   </td><td>1.875        </td></tr>
  <tr><td>$minor-seventh   </td><td>9:16   </td><td>1.778        </td></tr>
  <tr><td>$major-sixth     </td><td>3:5    </td><td>1.667        </td></tr>
  <tr><td>$minor-sixth     </td><td>5:8    </td><td>1.6          </td></tr>
  <tr><td>$fifth           </td><td>2:3    </td><td>1.5          </td></tr>
  <tr><td>$augmented-fourth</td><td>1:√2   </td><td>1.414        </td></tr>
  <tr><td>$fourth          </td><td>3:4    </td><td>1.333        </td></tr>
  <tr><td>$major-third     </td><td>4:5    </td><td>1.25         </td></tr>
  <tr><td>$minor-third     </td><td>5:6    </td><td>1.2          </td></tr>
  <tr><td>$major-second    </td><td>8:9    </td><td>1.125        </td></tr>
  <tr><td>$minor-second    </td><td>15:16  </td><td>1.067        </td></tr>
</table>

## [Changelog](https://github.com/Team-Sass/modular-scale/releases)

### License

The MIT License (MIT)

Copyright © 2015 [Scott Kellum](http://www.scottkellum.com/) ([@scottkellum](http://twitter.com/scottkellum)), [Adam Stacoviak](http://adamstacoviak.com/) ([@adamstac](http://twitter.com/adamstac)) and [Mason Wendell](http://thecodingdesigner.com/) ([@codingdesigner](http://twitter.com/codingdesigner))

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

**The software is provided “as is”, without warranty of any kind, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose and non-infringement. In no event shall the authors or copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.**
