var gulp            = require('gulp')
var gulpSequence    = require('gulp-sequence')
var conf            = TASK_CONFIG.tasks

// Grouped by what can run in parallel
var assetTasks = []
var codeTasks = []

conf.default.assetTasks.forEach(function(task, i){
  if ( conf[task].enable ) {
    assetTasks.push(task);
  }
});
if ( assetTasks.length == 0) {
  assetTasks = null;
}

conf.default.codeTasks.forEach(function(task, i){
  if ( conf[task].enable ) {
    codeTasks.push(task);
  }
});
if ( codeTasks.length == 0) {
  codeTasks = null;
}




gulp.task('default', function (cb) {
  gulpSequence(
      // 'clean',
      // prebuild,
      assetTasks,
      codeTasks,
      // static,
      // postbuild,
      'watch',
      cb)(function (err) {
    if (err) console.log(err)
  })
});

