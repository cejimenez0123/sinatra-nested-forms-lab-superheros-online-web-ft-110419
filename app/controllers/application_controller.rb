require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end
    post '/teams' do

      @team =Team.new(params[:team].to_a[0..1].to_h)
      @team_members = params[:team][:members].map { |member| Hero.new(member)}
      binding.pry
      erb :team
    end
end
