#!/usr/bin/coffee
favicons = require 'favicons'

settings =
  files:
    src: 'favicon_src.png' # Path for file to produce the favicons. `string` or `object`
    dest: 'favicons' # Path for writing the favicons to. `string`
    html: 'index.html' # Path for HTML file to write metadata. `string`
    browserConfig: 'browserconfig.xml' # Path for an existing browserconfig.xml. `string`

  icons:
    android: true # Create Android homescreen icon. `boolean`
    appleIcon: true # Create Apple touch icons. `boolean`
    appleStartup: true # Create Apple startup images. `boolean`
    coast: false # Create Opera Coast icon. `boolean`
    favicons: true # Create regular favicons. `boolean`
    firefox: true # Create Firefox OS icons. `boolean`
    opengraph: true # Create Facebook OpenGraph. `boolean`
    windows: true # Create Windows 8 tiles. `boolean`
    yandex: true # Create Yandex browser icon. `boolean`

  settings:
    appName: null # Your application's name. `string`
    appDescription: null # Your application's description. `string`
    developer: null # Your (or your developer's) name. `string`
    developerURL: null # Your (or your developer's) URL. `string`
    background: '#ffffff' # Background colour for flattened icons. `string`
    index: 'index.html' # Path for the initial page on the site. `string`
    url: 'www.littlehlondon.com' # URL for your website. `string`
    logging: false # Print logs to console?

favicons settings, (err) ->
  return console.error(err) if err
  console.log 'Favicons Created'

