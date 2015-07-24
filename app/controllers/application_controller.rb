require_relative "../../config/environment"
require_relative "../models/project.rb"
require_relative "../models/user.rb"
class ApplicationController < Sinatra::Base
  
  set :views, "app/views"
  set :public, "public"
	
	configure do
  enable :sessions
#    set :session_secret, "fwitter"
	end
	
	get'/' do
		erb :index
  end
	
	get '/login' do
		erb :login
	end
	
end