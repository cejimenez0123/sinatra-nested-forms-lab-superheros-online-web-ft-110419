require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end
    post '/teams' do

      @team =Team.new(params[:team][:name],[:team][:motto])
      binding.pry
      @team_members = params[:team][:members].map { |member| Hero.new(member)}
      
      erb :team
    end
end
