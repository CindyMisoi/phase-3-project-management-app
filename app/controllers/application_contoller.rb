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
    # Members
    get '/members' do 
      members = Member.all.order(created_at: :asc)
      members.to_json
    end
    post '/members' do
      member = Member.create(
        name: params[:name],
        email: params[:email],
        user_id: params[:user_id]
        project_id: params[:project_id]
      )
      member.to_json
    end
    patch '/members/:id' do
      member = Member.find(params[:id])
      member.update(
        name: params[:name],
        email: params[:email],
        user_id: params[:user_id]
        project_id: params[:project_id]
      )
      member.to_json
    end
  
    delete '/members/:id' do
      member = Member.find(params[:id])
      member.destroy
      member.to_json
    end
    # Projects
    get '/projects' do 
      projects = Project.all.order(created_at: :asc)
      projects.to_json
    end
    post '/projects' do
      project = Project.create(
        name: params[:name],
        title: params[:title],
        description: params[:description]
      )
      project.to_json
    end
    patch '/projects/:id' do
      project = Project.find(params[:id])
      project.update(
        name: params[:name],
        title: params[:title],
        description: params[:description]
      )
      project.to_json
    end
  
    delete '/projects/:id' do
      project = Project.find(params[:id])
      project.destroy
      project.to_json
    end
  end
  