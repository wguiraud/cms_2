require 'sinatra'
require 'redcarpet'
require 'sinatra/reloader'
require 'pry'
require 'tilt/erubis'
require 'rubocop-minitest'
require 'yaml'
require 'bcrypt'

get '/' do 
  "hello from the application"
end

