require 'sinatra'
require 'holidapi'
require 'date'

class MyWebApp < Sinatra::Base
  get '/' do
  	country = params['country'] || 'us'

  	if params['date'] != nil
  		date = Date.parse(params['date'])
  	else
  		date = Date.new
  	end

  	@holidays = HolidApi.get(country: country, month: date.month, year: date.year)
  	erb :index
  end
end