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
    @session[:key] = params
    erb :checkout
  end
  
end