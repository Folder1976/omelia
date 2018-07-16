if(!TASK_CONFIG.tasks.js.enable) return

var conf         = TASK_CONFIG.tasks.js
var gulp         = require('gulp')
var uglify       = require('gulp-uglify')
var browserSync  = require('browser-sync')
var rigger       = require('gulp-rigger')
var gulpSequence = require('gulp-sequence')
var gulpif       = require('gulp-if')


var jsLib = function () {
  gulp.src(conf.src + '/lib/**/*.js')
    // .pipe(rigger())
    // .pipe(uglify())
    .pipe(gulp.dest(conf.dest + '/lib'))
}

var jsScript = function () {
  gulp.src(conf.src + '/*.{' + conf.extensions + '}')
    .pipe(rigger())
    .pipe(gulpif(conf.uglify, uglify()))
    .pipe(gulp.dest(conf.dest))
    .pipe(browserSync.stream());
}

gulp.task('jsLib', jsLib);
gulp.task('jsScript', jsScript);



var jsTask = function () {
  gulpSequence('jsLib', 'jsScript')(function (err) {
    if (err) console.log(err)
  });
}

gulp.task('js', jsTask);


// gulp.task('js', [jsTask]);
module.exports = jsTask
