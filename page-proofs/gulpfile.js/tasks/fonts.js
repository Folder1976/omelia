if(!TASK_CONFIG.tasks.fonts.enable) return

var conf        = TASK_CONFIG.tasks.fonts
var browserSync = require('browser-sync')
var changed     = require('gulp-changed')
var gulp        = require('gulp')


var fontsTask = function() {
  return gulp.src(conf.src + '/**/*.{' + conf.extensions + '}')
    .pipe(changed(conf.dest)) // Ignore unchanged files
    .pipe(gulp.dest(conf.dest))
    .pipe(browserSync.stream())
}

gulp.task('fonts', fontsTask)
module.exports = fontsTask
