require 'sinatra'
require 'haml'

get '/sample' do
  haml :sample
end