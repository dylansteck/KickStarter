require 'sinatra'
#require_relative '../models/tweet'

class ApplicationController < Sinatra::Base

	set :views, "app/views"
	set :public, "public"


  get "/" do
  	erb :index
  end

  post '/tweet' do
  end

end



