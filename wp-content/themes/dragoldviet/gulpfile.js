var gulp = require('gulp');
var sass = require('gulp-sass');
var rename = require('gulp-rename');
var minifyCss = require('gulp-cssnano');
var browserSync = require('browser-sync');

// // compile task
// var gulp = require('gulp');
// var sass = require('gulp-sass');
// var browserSync = require('browser-sync');

// compile task
gulp.task('sass', function() {
    gulp.src('style.scss')
        .pipe(sass())
        .pipe(minifyCss())
        .pipe(rename('style.css'))
        .on('error', swallowError)
        .pipe(gulp.dest(''))
        // .pipe(gulp.dest(function (f) {
        //     return f.base;
        // }))
        .pipe(browserSync.stream());
});

// browser sync init
gulp.task('browser-sync', ['sass'], function() {
    browserSync.init({
        server: {
            baseDir: "./"
        }
    });
});

// watch for changes in html, css, scss
gulp.task('default', ['browser-sync'], function() {
    console.log('xin chao');

    // gulp.watch('public/scss/**/*.scss', ['sass']);
    // gulp.watch('public/scss/**/*.scss').on('change', browserSync.reload)
    // gulp.watch('public/js/**/*.js').on('change', browserSync.reload)
    // gulp.watch('*.php').on('change', browserSync.reload);
    // gulp.watch('*.html').on('change', browserSync.reload);

})

// skip if error occured
function swallowError(error) {
    console.log(error.toString())
    this.emit('end')
}