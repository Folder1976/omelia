if(!TASK_CONFIG.tasks.browserSync.enable) return

var conf         = TASK_CONFIG.tasks.browserSync
var gulp         = require('gulp')
var browserSync  = require('browser-sync')


var browserSyncTask = function() {
  browserSync(conf.param, function(err, bs) {
    console.log(bs.options.getIn(["urls", "local"]))
  });
}

gulp.task('browserSync', browserSyncTask)
module.exports = browserSyncTask
