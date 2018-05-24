require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:teams])

      params[:teams][:heroes].each do |hero|
        Hero.new(hero)
      end

      

      erb :team
    end

    get '/teams' do
      erb :views
    end

end
