gulp = require 'gulp'

coffeePipe = require './gulpBrowserify'
sassPipe = require './gulpSass'

gulp.task 'browserify', ->
  gulp
    .src(
      './coffee/app.coffee'
      , {read: false}
    ).pipe(coffeePipe())


gulp.task 'sass', ->
  gulp.src('sass/main.sass')
    .pipe(sassPipe())


gulp.task 'default', [
  'browserify'
  'sass'
]

