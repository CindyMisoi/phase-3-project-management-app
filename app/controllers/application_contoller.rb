class ApplicationController < Sinatra::Base
    set :default_content_type, 'application/json'
    
    # Add routes
    get '/users' do 
      users = User.all.order(created_at: :asc)
      users.to_json
    end
    post '/users' do
      user = User.create(
        username: params[:username],
        email: params[:email],
        password: params[:password]
      )
      user.to_json
    end
    patch '/users/:id' do
      user = User.find(params[:id])
      user.update(
        username: params[:username],
        email: params[:email],
        password: params[:password]
      )
      user.to_json
    end
  
    delete '/users/:id' do
      user = User.find(params[:id])
      user.destroy
      user.to_json
    end
  end
  