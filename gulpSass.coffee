
sass = require 'gulp-ruby-sass'
lazypipe = require 'lazypipe'
gulp = require 'gulp'

module.exports = lazypipe()
  .pipe(sass
  ,
    loadPath: ['vendor/foundation/scss']
    style: 'compressed'
  ).pipe(gulp.dest, 'css/')
