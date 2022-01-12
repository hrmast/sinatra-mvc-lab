require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
    get '/' do
        erb :index
    end

    post '/' do
        erb :user_input

    end
end