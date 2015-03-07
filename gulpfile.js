var paths = {
  styles:  ['scss/**/*.scss']
};

var gulp = require('gulp');
var concat = require('gulp-concat');
var compass = require('gulp-compass');
var rename = require('gulp-rename');
var sass = require('gulp-sass');
var uglify = require('gulp-uglify');
var autoprefixer = require('gulp-autoprefixer');

gulp.task('compass', function() {
  gulp.src(paths.styles)
    .pipe(compass({
      css: 'dist/css',
      sass: 'scss',
      require: ['modular-scale']
    }))
    .pipe(gulp.dest('./dist/css')); 
});

gulp.task('default',['compass']);
