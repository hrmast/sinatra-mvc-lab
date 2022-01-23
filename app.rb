require_relative 'config/environment'
require_relative 'models/piglatinizer.rb'

class App < Sinatra::Base
    get '/' do
        
        erb :user_input
    end

    post '/piglatinize' do
        results = PigLatinizer.new
        
        @user_result = results.piglatinize(params[:user_phrase])
    end
end