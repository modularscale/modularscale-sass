const sass = require('node-sass');
const eyeglass = require('eyeglass');
const path = require('path');

sass.render(
  eyeglass({ file: path.join(__dirname, 'main.scss') }),
  (err, res) => {
    if (err) {
      console.error(err.stack);
      process.exitCode = 1;
      return;
    } else {
      console.log(res.css.toString());
    }
  }
);
