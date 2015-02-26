require 'sinatra'
require 'holidapi'
require 'date'

class MyWebApp < Sinatra::Base
  get '/' do
  	country = params['country'] || 'us'

  	if params['month'] != nil
      string = params['month']
      string += '-01'
      date = Date.parse(string)
  	else
  		date = Date.new
  	end

  	@holidays = HolidApi.get(country: country, month: date.month, year: date.year)
  	erb :index
  end
end