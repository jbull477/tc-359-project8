require 'sinatra/base'
require "sinatra/content_for"

class MyWebApp < Sinatra::Base
	helpers Sinatra::ContentFor
  get '/' do
  	last_modified Time.now
  	erb :"index#{ rand(3) + 1}"
   
  end
end