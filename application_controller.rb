require 'bundler'
Bundler.require

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
   get '/results' do
     erb :results
  end
  

 
end
