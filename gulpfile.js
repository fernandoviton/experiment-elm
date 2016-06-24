var gulp = require('gulp'),
    shell = require('gulp-shell');

gulp.task('build-tests', shell.task([
  'elm make --warn test/FibonacciTest.elm --output continuousTest.js'
]))

gulp.task('run-tests', ['build-tests'], shell.task([
  'node continuousTest.js'
]))

gulp.task('default', function () {
  gulp.run('run-tests')

  gulp.watch(['**/*.elm', 'test/**/*.elm'], ['run-tests'])
})
