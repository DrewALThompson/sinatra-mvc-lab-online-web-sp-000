require_relative 'config/environment'

class App < Sinatra::Base
  
  get '/' do 
    erb :user_input
  end
  
  post '/' do
    @pg_text = PigLatinizer.new(params[:user_phrase])
    @pg_text.pg_sentence
  end
end