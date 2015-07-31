require 'bundler'
Bundler.require
require_relative 'models/model.rb'

class ApplicationController < Sinatra::Base

  get '/' do
    erb :index
  end
  
   post '/results' do
#      puts params
     user_situation=params["situation"]
     user_severity=params["severity"]
     awkward_hash=awkward_statements(user_situation, user_severity)
     @awk=awkward_hash[:awk]
     @gif=awkward_hash[:gif]
     erb :results
  end
end
