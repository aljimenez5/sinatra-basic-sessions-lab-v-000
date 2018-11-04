require_relative 'config/environment'

class App < Sinatra::Base
  
  
  configure do
    enable :sessions
    set :session_secret, "veryveryyugesecret"
  end
  
  get '/' do 
    erb :index
  end
  
  post '/checkout' do
    @session = session
    @session[:session_id] = params
    binding.pry
    erb :checkout
  end
  
end