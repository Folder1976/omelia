// ==== КОНФИГУРАЦИЯ ==== //

module.exports = {
  // основные настройки
  general: {
    // название проекта
    // project_name: 'new_project',

    // url-адрес проекта ( например, localhost или my-local-site.loc )
    // project_url: 'localhost',

    // путь к папке с компонентами bower
    bower_path: './bower_components/',
  },


  // настройки задач
  tasks: {

    // задача по умолчанию
    default: {
      assetTasks: ['fonts', 'images', 'pngSprite', 'svgSprite'],
      codeTasks: ['html', 'php', 'styles', 'js'],
    },

    // список задач для контроля
    // отслеживатся будут только включенные задачи ( enable: true )
    watch: {
      watchableTasks: ['fonts', 'images', 'pngSprite', 'svgSprite', 'html', 'php', 'styles', 'js', 'static'],
    },

    // собираем html-ки
    html: {
      enable: false,
      src: "src",
      dest: "html",
      extensions: ["html"],
      htmlmin: false,
      htmlminConfig: {
        collapseWhitespace: true,
        quoteCharacter: '"',
      },
    },

    // при изменении php просто перезагружаем страницу в браузере
    php: {
      enable: true,
      src: "../catalog/view/theme/default/template",
      dest: "",
      extensions: ["php"],
    },

    // минимизируем изображения
    images: {
      enable: true,
      src: "src/img",
      dest: "../catalog/view/theme/default/img",
      extensions: ["jpg", "jpeg", "png", "svg", "gif"],
      minify: true,
      minifiConfig: {
        optimizationLevel: 7,
        progressive: true,
        interlaced: true
      },
    },

    // копируем шрифты
    fonts: {
      enable: false,
      src: "src/fonts",
      dest: "html/fonts",
      extensions: ["woff2", "woff", "eot", "ttf", "svg", "otf"],
    },

    // собираем, минимизируем скрипты
    js: {
      enable: true,
      src: "src/js",
      dest: "../catalog/view/theme/default/js",
      extensions: ['js', 'jsx'],
      uglify: false
    },

    // создаем png-спайты
    pngSprite: {
      enable: false,
      src: "src/pngSprite",
      dest: "html/img/sprite",
      imgPath: "../img/sprite",
      // fileName: "sprite-" + Math.random().toString().replace(/[^0-9]/g, "") + ".png",  // random name
      fileName: "sprite.png",  // static name
    },

    // создаем svg-спайты
    svgSprite: {
      enable: true,
      src: "src/svgSprite/*.svg",
      dest: "../catalog/view/theme/default/img/sprite",
      svgstore: {},
    },

    static: {
      enable: false,
    },

    copy: {
      enable: false,
    },

    // собираем, компилируем стили
    styles: {
      enable: true,
      src: "src/style",
      dest: "../catalog/view/theme/default/stylesheet",
      extensions: ["sass", "scss", "css"],
      autoprefixer: { browsers: ['> 3%', 'last 2 versions', 'ie 9', 'ios 6', 'android 4'] },
      rename: { suffix: '.min' },
      minify: { keepSpecialComments: 0 },
      sourcemaps_enable: true,
    },

    // живая перезагрузка через browserSync
    browserSync: {
      enable: true,
      param: {
        // server: {
        //   baseDir: "html"
        // },
        proxy: 'omeliya.like-it.solutions.localhost/', // Использование прокси-сервера, а не встроенного сервера


        notify: false, // In-line нотификации ( блоки текста, говорящие подключились ли вы к серверу BrowserSync или нет )
        open: true, // Поставьте false если вы не хотите, чтобы окно браузера открывалось автоматически
        port: 3000, // Номер порта для live версии сайта; default: 3000
        watchOptions: {
          debounceDelay: 2000 // Задержка для событий, вызываемых подряд для того же файла / события
        }
      }
    },

  }
}
