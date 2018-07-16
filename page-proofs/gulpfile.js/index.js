// ==== GULPFILE ==== //

// Эта конфигурация следует модульному дизайну `gulp-starter`, разработанному Dan Tello: https://github.com/greypants/gulp-starter
// Ознакомьтесь с папкой `tasks-active`...

var gulp = require('gulp');
var requireDir = require('require-dir');

global.TASK_CONFIG = require('./config');

requireDir('./tasks');
