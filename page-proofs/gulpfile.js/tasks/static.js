if(!TASK_CONFIG.tasks.copy.enable) return

var conf           = TASK_CONFIG.tasks.copy
// var browserSync    = require('browser-sync')
var gulp           = require('gulp')
var replace        = require('gulp-string-replace')

var copyTask = function() {
  // копируем стили
  gulp.src('html/css/**.*')
    .pipe(gulp.dest('../catalog/view/theme/default/stylesheet'));

  // копируем изображения
  gulp.src('html/img/**.*')
    .pipe(gulp.dest('../catalog/view/theme/default/img'));

  // копируем скрипты
  gulp.src('html/js/**.*')
    .pipe(gulp.dest('../catalog/view/theme/default/js'));
  // в файле scripts.js неодходимо сделать замену
  gulp.src('html/js/scripts.js')
    .pipe(replace('img/sprite/svgSprite.svg#', 'catalog/view/theme/default/img/sprite/svgSprite.svg#'))
    .pipe(gulp.dest('../catalog/view/theme/default/js'));



  // return gulp.src(conf.src + '/**/*.' + conf.extensions)
  //   .pipe(browserSync.stream())
}

gulp.task('copy', copyTask)
module.exports = copyTask
