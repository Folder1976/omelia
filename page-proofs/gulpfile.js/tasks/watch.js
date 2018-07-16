var gulp        = require('gulp')
var watch       = require('gulp-watch')
var conf        = TASK_CONFIG.tasks


var watchTask = function() {
  var watchableTasks = [];
  conf.watch.watchableTasks.forEach(function(task){
    if ( conf[task].enable ) {
      watchableTasks.push(task);
    }
  });

  watchableTasks.forEach(function(taskName) {
    watch(conf[taskName].src, function() {
      require('./' + taskName)()
    })
  });
}

gulp.task('watch', ['browserSync'], watchTask);
module.exports = watchTask
