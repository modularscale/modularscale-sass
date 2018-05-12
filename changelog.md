# Version 3.0.5

* Added an !important flag for specificity in some frameworks like IntuitCSS. [See pull 146 for details](https://github.com/modularscale/modularscale-sass/pull/146).

# Version 3.0.4

* Fixed line breaks in error messaging to be compatable with future versions of Sass.

# Version 3.0.3

* Updated version for eyeglass (1.2.1)
* Fixed scss file path for Bower
* Removed `npm-debug.log` file

# Version 3.0.2

* Fix bug when the exponent is 0

# Version 3.0.1

* Fix issue with generic `pow()` being used instead of `ms-pow()`

# Version 3.0.0

  Core logic re-write along with settings moved to maps so they can be multithreaded and setup responsive scales better.

  * Settings moved into a map.
  * Multiple settings threads so you can use different scales in tandem.
  * Removed the list funciton that outputs a list of values.
  * Removed multiple ratio support because it was confusing and you should use multiple threads anyway. This dramatically reduced the core logic and bugs.
  * Fluid is the only responsive setting.
  * Responsive mixin automatically pulls breakpoints from map threads.
  * find ratios based on target sizes at points on the scale.

# Version 2.1.1

  Bugfix an `@else if` statement.

# Version 2.1.0

  Ground-up re-write of ms-respond based on http://madebymike.com.au/writing/precise-control-responsive-typography/

# Version 2.0.6

  Pixel rounding and responsive mixins

# Version 2.0.4

  Version to the same release number as bower.

# Version 2.0.0

  This is a breaking version. You will need to refactor slightly in order to upgrade to this version from a previous version.

  * Complete re-write.
  * ratios are variables, not functions
  * Common variables are scoped to "ms-"
  * ms-lists() is the list functions
  * No more mixins at all, only functions.
  * Increased compatibility with Sass 3.1 and up
  * Compatibility with LibSass
  * Compass no longer required (non-integer values require Compass)
