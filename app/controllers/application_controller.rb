require 'sinatra/base'

class App < Sinatra::Base

    set :views, Proc.new { File.join(root, "../views/") }

    get '/' do
      erb :super_hero
    end

    post '/teams' do
      @team = Team.new(params[:team])

      binding.pry

      params[:teams][:members].each do |hero|
        Hero.new(hero)
      end

      @heroes = Hero.all

      erb :team
    end

    get '/teams' do
      erb :views
    end

end
