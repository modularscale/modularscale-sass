# grunt-sass [![Build Status](https://travis-ci.org/sindresorhus/grunt-sass.svg?branch=master)](https://travis-ci.org/sindresorhus/grunt-sass)

[<img src="https://rawgit.com/sass/node-sass/master/media/logo.svg" width="200" align="right">](https://github.com/sass/node-sass)

> Compile Sass to CSS using [node-sass](https://github.com/sass/node-sass)

*Issues with the output should be reported on the libsass [issue tracker](https://github.com/hcatlin/libsass/issues).*

This task uses [libsass](http://libsass.org) which is a Sass compiler in C++. In contrast to the original Ruby compiler, this one is much faster, but is [missing some features](http://sass-compatibility.github.io/), though improving quickly. It also doesn't support Compass. Check out [grunt-contrib-sass](https://github.com/gruntjs/grunt-contrib-sass) if you prefer something more stable, but slower.


## Install

```
$ npm install --save-dev grunt-sass
```


## Usage

```js
require('load-grunt-tasks')(grunt); // npm install --save-dev load-grunt-tasks

grunt.initConfig({
	sass: {
		options: {
			sourceMap: true
		},
		dist: {
			files: {
				'main.css': 'main.scss'
			}
		}
	}
});

grunt.registerTask('default', ['sass']);
```

Files starting with `_` are ignored to match the expected [Sass partial behaviour](http://sass-lang.com/documentation/file.SASS_REFERENCE.html#partials).


## Options

See the `node-sass` [options](https://github.com/sass/node-sass#options), except for `file`, `outFile`, `success`, `error`.

The default value for the `precision` option is `10`, so you don't have to change it when using Bootstrap.


## License

MIT © [Sindre Sorhus](http://sindresorhus.com)
