if(!TASK_CONFIG.tasks.images.enable) return

var conf        = TASK_CONFIG.tasks.images
var gulp        = require('gulp')
var browserSync = require('browser-sync')
var changed     = require('gulp-changed')
var imagemin    = require('gulp-imagemin')
var gulpif      = require('gulp-if')

var imagesTask = function() {
  return gulp.src(conf.src + '/**/*.{' + conf.extensions + '}')
    .pipe(changed(conf.dest)) // Ignore unchanged files
    .pipe(gulpif(conf.minify, imagemin(conf.minifyConfig)))
    .pipe(gulp.dest(conf.dest))
    .pipe(browserSync.stream())
}

gulp.task('images', imagesTask)
module.exports = imagesTask
