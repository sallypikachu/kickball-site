require 'pry'
require 'sinatra'
require 'json'
require 'erb'

file = File.read('roster.json')
data_hash = JSON.parse(file)

get '/teams' do
  @data_hash = data_hash
  erb :index
end

get '/teams/:team_name' do
  @team_name = params[:team_name]
  @team_data = data_hash[@team_name]
  erb :show
end
