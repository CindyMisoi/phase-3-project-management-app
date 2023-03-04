# app.rb
require 'sinatra'
require 'sinatra/cross_origin'
class MyApp < Sinatra::Base
  set :bind, '0.0.0.0'
  configure do
    #This is enable cross on the server
    enable :cross_origin
  end

  #This before blocks gets invoked on every request and
  #the (*) mark tells your server that share the resource with anyone, 
  #if you want to share it with specific domain you can mention the domain/s 
  #by removing the asterisk sign.

  before do
    response.headers['Access-Control-Allow-Origin'] = 'http://localhost:3000/'
  end

  # routes...
  options "*" do
    response.headers["Allow"] = "GET, PUT, POST, DELETE, OPTIONS"
    response.headers["Access-Control-Allow-Headers"] = "Authorization, 
        Content-Type, Accept, X-User-Email, X-Auth-Token"
    response.headers["Access-Control-Allow-Origin"] = "*"
    200
  end
end