# Modular Scale

A modular scale is a list of values that share the same relationship. These values are often used to size type and create a sense of harmony in a design. Proportions within modular scales are all around us from the spacing of the joints on our fingers to branches on trees. These natural proportions have been used since the time of the ancient Greeks in architecture and design and can be a tremendously helpful tool to leverage for web designers.

Ems work especially well with modular scales as their recursive properties mimic modular scales making them more predictable and easier to manage. Pixels and other units work just fine and breakpoints in responsive web design can naturally fall on your scale to create better relevance to your text as all the values in your layout harmonize with each other.

To get started, you need to select a ratio and a base value. The base value is usually your text font size or 1em. Optionally you can add another value to create a double stranded modular scale which might be useful to create more options for in-between values. This base size paired with a ratio such as the golden ratio or any musical proportion will create your scale of values which all share this proportion.

## Install

### NPM

- Terminal: `npm install modularscale-sass --save-dev`
- SCSS: `@use '~modularscale-sass/stylesheets/modularscale' as ms;`

### Sass

- [Download the latest zip](https://github.com/modularscale/modularscale-sass/releases/latest)
- Extract into your project
- SCSS: `@use '<path-to>/modularscale' as ms;`

## Using modular scale

#### Initial setup and usage:

The first thing you’ll want to do when you start using modular scale is configure it to meet your needs. This is done in the `ms.$settings` map.

```scss
ms.$settings: (base: 1rem, ratio: 1.25);
```

You can use any unit you wish as your base and any ratio. Multiple bases can be defined for creating multi stranded scales. There is no limit here to the number of strands you use.

```scss
ms.$settings: (base: 1em 1.2em 1.6em, ratio: 1.5);
```

Now that we have defined your scale, we can start using it anywhere. Simply call the `ms.step(n)` function where `n` is the point on the scale.

```scss
h4 {
  font-size: ms.step(2);
}
```

##### Avoiding scoped styles

You can import the modular scale along with a configuration. Pass the unprefixed settings into the use function.

```scss
@use '../stylesheets/modularscale' as ms with ($settings: (base: 1em, ratio: 1.5));
```

#### Multiple scale threads

Modular scale now supports different settings threads, so you can set up various threads to configure different ratios or breakpoints.

```scss
ms.$settings: (
  base: 1em,
  ratio: 1.5,
  a: (
    ratio: 1.3,
  )
);
```

To call the thread named `a`, call it in your function like so:

```scss
h5 {
  font-size: ms.step(2, $thread: a);
}
```

## Responsive modular scales

You will likely want to change your typographic settings as browser or element sizes change. This functionality is built right into modular scale! Configure your breakpoints directly into your settings map and select your responsive mode. [Typetura](https://docs.typetura.com) is the default mode for fluidly responsive text that can respond to various elements in your layout. `media` for media queries and `container` for container queries can also be used.

```scss
ms.$settings: (
  base: 1rem,
  ratio: 1.5,
  respond: 'typetura',
  // typetura, media, or container
  400px: (
    // base is inheritied
    ratio: 1.2,
  ),
  900px: (
    base: 1.25rem,
    ratio: 1.3,
  ),
  1200px: (
    base: 1.5rem,
    ratio: 1.6,
  )
);
```

Nest the code you want to be responsive inside the `ms.step using ($respond)` mixin. Each time you call the `ms.step(#, $respond)` function and you want it to respond, you must pass the `$respond` variable to it.

```scss
.element {
  // Nest the responsive mixin inside of your element
  @include ms.step using ($respond) {
    // Now write all the styles you want to be responsive
    // This value will be responsive
    font-size: ms.step(2, $respond);

    // This will not respond
    margin-bottom: ms.step(3);

    // top/bottom will be responsive, left/right will not
    padding: ms.step(2, $respond) ms.step(2);
  }
}
```

#### Typetura implementation notes

This requires the [Typetura script](https://github.com/Typetura/Typetura/releases/latest) is installed on your website. Only pixel based breakpoints can be used with this mode. You can still use any unit for your base size(s).

#### Container query implementation notes

You will need to define a container. Do this with the `@include ms.container;` mixin.

```scss
// By default, the container is .modularscale
@include ms.container;
// You can define your own container by passing a selector through as an argument
@include ms.container('.ms-container');
```

## Target sizes

One of the more difficult parts of setting up your scales is finding a ratio that works for you. In many cases you know what size you want your text to be and what size you want larger headings to be. The `at` helper allows you to plug in a target size into the ratio value and it will generate your ratio.

```scss
ms.$settings: (base: 16px, ratio: 42at5);
```

Now your base is `16px` and when you call `ms.step(5)` it will be `42px`. Everything in-between falls neatly on a scale created with these two values.

## Ratios

Modular scale includes functions for a number of classic design and musical scale ratios.

```scss
@use '../stylesheets/modularscale' as ms with ($settings: (base: 1em, ratio: 'fifth'));
```

```scss
.sample {
  font-size: ms.step(2, $ratio: 'major-second');
}
```

| Function             | Ratio   | Decimal value |
|----------------------|---------|---------------|
| phi                  | 1:1.618 | 1.618         |
| golden               | 1:1.618 | 1.618         |
| double-octave        | 1:4     | 4             |
| major-twelfth        | 1:3     | 3             |
| major-eleventh       | 3:8     | 2.667         |
| major-tenth          | 2:5     | 2.5           |
| octave               | 1:2     | 2             |
| major-seventh        | 8:15    | 1.875         |
| minor-seventh        | 9:16    | 1.778         |
| major-sixth          | 3:5     | 1.667         |
| minor-sixth          | 5:8     | 1.6           |
| fifth                | 2:3     | 1.5           |
| augmented-fourth     | 1:√2    | 1.414         |
| fourth               | 3:4     | 1.333         |
| major-third          | 4:5     | 1.25          |
| minor-third          | 5:6     | 1.2           |
| major-second         | 8:9     | 1.125         |
| minor-second         | 15:16   | 1.067         |

By default, ratio is set to `fifth`.

You can add your own ratios as well.

## [Changelog](https://github.com/Team-Sass/modular-scale/releases)

### License

The MIT License (MIT)

Copyright © 2011 - 2021 [Scott Kellum](http://www.scottkellum.com/) ([@scottkellum](http://twitter.com/scottkellum)), [Adam Stacoviak](http://adamstacoviak.com/) ([@adamstac](http://twitter.com/adamstac)) and [Mason Wendell](http://thecodingdesigner.com/) ([@codingdesigner](http://twitter.com/codingdesigner))

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

**The software is provided “as is”, without warranty of any kind, express or implied, including but not limited to the warranties of merchantability, fitness for a particular purpose and non-infringement. In no event shall the authors or copyright holders be liable for any claim, damages or other liability, whether in an action of contract, tort or otherwise, arising from, out of or in connection with the software or the use or other dealings in the software.**
