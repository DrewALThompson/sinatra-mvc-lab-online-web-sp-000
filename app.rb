require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end
  
  post '/piglatinize' do
    @pig_latinized_word = PigLatinizer.new.piglatinize(params[:user_phrase])
    
    erb :pig_latin
  end
end