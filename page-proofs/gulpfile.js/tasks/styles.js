if(!TASK_CONFIG.tasks.styles.enable) return

var conf         = TASK_CONFIG.tasks.styles
var gulp         = require('gulp')
var sass         = require('gulp-sass')
var sourcemaps   = require('gulp-sourcemaps')
var autoprefixer = require('gulp-autoprefixer')
var rename       = require('gulp-rename')
var cleanCss     = require('gulp-cleanCss')
var lec          = require('gulp-line-ending-corrector')
var gulpif       = require('gulp-if')
var handleErrors = require('../lib/handleErrors')
var browserSync  = require('browser-sync')


var stylesheetsTask = function () {
  return gulp.src(conf.src + '/**/*.{' + conf.extensions + '}')
    .pipe(gulpif(conf.sourcemaps_enable, sourcemaps.init()))
    .pipe(sass().on('error', handleErrors))
    .pipe(autoprefixer(conf.autoprefixer))
    .pipe(lec({verbose:true, eolc: 'LF', encoding:'utf8'}))
    .pipe(gulpif(conf.sourcemaps_enable, sourcemaps.write())) // Пишет внутреннюю sourcemap
    .pipe(gulp.dest(conf.dest))  // Помещает не минимизированный файл в папку `dest`
    .pipe(rename(conf.rename))
    // .pipe(gulpif(conf.sourcemaps_enable, sourcemaps.init()))
    .pipe(cleanCss(conf.minify))
    // .pipe(gulpif(conf.sourcemaps_enable, sourcemaps.write('./'))) // Пишет внешнюю sourcemap
    .pipe(gulp.dest(conf.dest))
    .pipe(browserSync.stream());

}


// Создаёт файл css из файлов Scss , расставляет вендорные префиксы и минифицирует
gulp.task('styles', stylesheetsTask);

module.exports = stylesheetsTask