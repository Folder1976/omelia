if(!TASK_CONFIG.tasks.pngSprite.enable) return

var conf        = TASK_CONFIG.tasks.pngSprite
var browserSync = require('browser-sync')
var gulp        = require('gulp')
var del         = require('del')
var spritesmith = require('gulp.spritesmith')

var pngSpriteTask = function(cb) {
  del([conf.dest + '/sprite-*.png'], cb);

  var fileName = conf.fileName;

  var spriteData = gulp.src(conf.src + '/*.png').pipe(spritesmith({
    imgName: fileName,
    cssName: '_sprite.scss',
    cssFormat: 'scss',
    cssVarMap: function (sprite) {
        sprite.name = 'ico-' + sprite.name;
    },
    imgPath: conf.imgPath + '/' + fileName
  }));

  spriteData.css
    .pipe(gulp.dest(TASK_CONFIG.tasks.styles.src + '/sprite'));

  return spriteData.img.pipe(gulp.dest(conf.dest))
    .pipe(browserSync.stream())
}

gulp.task('pngSprite', pngSpriteTask)
module.exports = pngSpriteTask
