if(!TASK_CONFIG.tasks.php.enable) return

var conf           = TASK_CONFIG.tasks.php
var browserSync    = require('browser-sync')
var gulp           = require('gulp')

var phpTask = function() {
  return gulp.src(conf.src + '/**/*.' + conf.extensions)
    .pipe(browserSync.stream())
}

gulp.task('php', phpTask)
module.exports = phpTask
