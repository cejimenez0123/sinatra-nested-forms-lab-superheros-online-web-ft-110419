require 'sinatra/base'
require 'pry'
class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end
    post '/teams' do
      @team =Team.new(parans[:team])
    @team_name = params[:team][:name]
    binding.pry
      erb :super_hero
    end

end
