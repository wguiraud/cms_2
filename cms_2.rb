require 'sinatra'
require 'sinatra/reloader'
require 'tilt/erubis'
require 'pry'

root = File.expand_path("..", __FILE__)

get '/' do 
  @files = Dir.glob(root + "/data/*").map do |path|
    File.basename(path)
  end
  erb :index
end

get '/:file_name' do 
  file_path = root + "/data/#{params[:file_name]}"
  
  headers['content-type'] = 'text/plain'

  File.read(file_path)
end

