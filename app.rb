require 'sinatra'
require 'sinatra/reloader' if development?
require 'barista'
require 'haml'

set :app_file, __FILE__
set :root, File.dirname(__FILE__)
set :views, 'views'
set :public, 'public'
set :haml, {:format => :html5}

Sinatra.register Barista::Integration::Sinatra

Barista.configure do |c|
  c.root = File.join Sinatra::Application.root, 'scripts'
  c.output_root = File.join Sinatra::Application.root, 'public', 'scripts'
end

get '/' do
  haml :index, :layout => :layout
end