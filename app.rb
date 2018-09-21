require_relative 'config/environment'

class App < Sinatra::Base


  get '/' do
   200
   "hello world"
  erb  :user_input
  end

  post '/piglatinize' do
    new_phrase = PigLatinizer.new

"#{new_phrase.piglatinize(params[:user_phrase].to_s)}"


end

end

























end
