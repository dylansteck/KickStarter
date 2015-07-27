<<<<<<< HEAD
require 'sinatra'
require_relative '../models/user'
require_relative '../models/project'

enable :sessions

class ApplicationController < Sinatra::Base
	set :views, "app/views"
	set :public, "public"

	get "/" do
		if session[:session_id]
			redirect '/projects'
		end
		erb :index
	end

	post "/signup" do
		@username = params['username']
		@password = params['password']
		u = User.new({:username => @username, :password => @password})
		u.save
		session[:session_id] = u.id
		redirect '/projects'
	end

	post "/login" do
		@username = params['username']
		@password = params['password']
		u = User.find(:username => @username, :password => @password)
		if !u
			status 401
		else
			session[:session_id] = u.id
		end

		redirect "/projects"
	end

	get "/projects" do
		@projects = Project.all
		erb :projects
	end

	get "/project/:id" do
		@project = Project.find(:id => params['id'])
		erb :project_page
	end
end



=======
require_relative "../../config/environment"

class ApplicationController < Sinatra::Base

end
>>>>>>> 61e0a86e1f5d537f92dcdfb6cfa2b90afc9518a3
