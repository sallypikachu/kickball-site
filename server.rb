require 'pry'
require 'sinatra'
require 'json'
require 'erb'

set :public_folder, File.join(File.dirname(__FILE__), "public")

file = File.read('roster.json')
data_hash = JSON.parse(file)

get '/teams' do
  @data_hash = data_hash
  erb :show
end
