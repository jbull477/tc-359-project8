require 'sinatra/base'
require "sinatra/content_for"

class MyWebApp < Sinatra::Base
	helpers Sinatra::ContentFor
	last_modified Time.now
  get '/' do
  	erb :"index#{ rand(3) + 1}"
   
  end
end