if(!TASK_CONFIG.tasks.html.enable) return

var conf           = TASK_CONFIG.tasks.html
var browserSync    = require('browser-sync')
var gulp           = require('gulp')
var gulpif         = require('gulp-if')
var handleErrors   = require('../lib/handleErrors')
var htmlmin        = require('gulp-htmlmin')
var rigger         = require('gulp-rigger')

var htmlTask = function() {
  return gulp.src(conf.src + '/*.' + conf.extensions + '')
    .pipe(rigger())
      .on('error', handleErrors)
    .pipe(gulpif(conf.htmlmin, htmlmin(conf.htmlminConfig)))
    .pipe(gulp.dest(conf.dest))
    .pipe(browserSync.stream())
}

gulp.task('html', htmlTask)
module.exports = htmlTask
