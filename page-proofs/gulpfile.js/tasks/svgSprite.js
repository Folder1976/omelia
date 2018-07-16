if(!TASK_CONFIG.tasks.svgSprite.enable) return

var conf        = TASK_CONFIG.tasks.svgSprite
var browserSync = require('browser-sync')
var gulp        = require('gulp')
var svgstore    = require('gulp-svgstore')
var svgmin      = require('gulp-svgmin')
var path        = require('path')

var svgSpriteTask = function() {
  return gulp.src(conf.src)
        .pipe(svgmin(function (file) {
            var prefix = path.basename(file.relative, path.extname(file.relative));
            return {
                plugins: [{
                    cleanupIDs: {
                        prefix: prefix + '-',
                        minify: true
                    }
                }]
            }
        }))
        .pipe(svgstore())
        .pipe(gulp.dest(conf.dest));

  // return gulp.src(conf.src)
  //   .pipe(svgstore(conf.svgstore))
  //   .pipe(gulp.dest(conf.dest))
  //   .pipe(browserSync.stream())
}

gulp.task('svgSprite', svgSpriteTask)
module.exports = svgSpriteTask
