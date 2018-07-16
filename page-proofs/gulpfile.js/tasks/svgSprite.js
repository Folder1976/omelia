if(!TASK_CONFIG.tasks.svgSprite.enable) return

var conf        = TASK_CONFIG.tasks.svgSprite
var browserSync = require('browser-sync')
var gulp        = require('gulp')
var svgstore    = require('gulp-svgstore')

var svgSpriteTask = function() {

  return gulp.src(conf.src)
    .pipe(svgstore(conf.svgstore))
    .pipe(gulp.dest(conf.dest))
    .pipe(browserSync.stream())
}

gulp.task('svgSprite', svgSpriteTask)
module.exports = svgSpriteTask
