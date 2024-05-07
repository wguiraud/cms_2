require 'sinatra'
require 'sinatra/reloader'
require 'redcarpet'
require 'pry'
require 'tilt/erubis'
require 'rubocop-minitest'
require 'yaml'
require 'bcrypt'

get '/' do 
  "hello from the application"
end

