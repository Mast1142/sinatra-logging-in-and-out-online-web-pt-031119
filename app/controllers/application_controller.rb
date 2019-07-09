require_relative '../../config/environment'
require 'pry'
class ApplicationController < Sinatra::Base
  configure do
    set :views, Proc.new { File.join(root, "../views/") }
    enable :sessions unless test?
    set :session_secret, "secret"
  end

  get '/' do
    erb :index
  end

  post '/login' do
    @user = User.find_by(username: params[:username])
    if @user
      session[:user_id] = @user.id
      redirect '/account'
    else
      erb :error
    end
  end

  get '/account' do
<<<<<<< HEAD
    #binding.pry
    @user = Helpers.current_user(session)
    @login = Helpers.is_logged_in?(session)
    if @login
      erb :account
    else
      erb :error
    end
=======
    erb :account
>>>>>>> 72d210918cf53bc449700ea511e81894d3228733
  end

  get '/logout' do
    session.clear
    redirect '/'
  end
end
