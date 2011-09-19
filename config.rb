# Compass config

require './app'

project_path          = Sinatra::Application.root

http_path             = '/'
http_stylesheets_path = '/stylesheets'
http_images_path      = '/images'
http_javascripts_path = '/scripts'

css_dir               = File.join 'public', 'stylesheets'
sass_dir              = 'stylesheets'
images_dir            = File.join 'public', 'images'
javascripts_dir       = File.join 'public', 'scripts'

# To enable relative paths to assets via compass helper functions. Uncomment:
# relative_assets = true
