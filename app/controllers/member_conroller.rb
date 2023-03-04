class MemberController < Sinatra::Base
    set :default_content_type, 'application/json'
     # Members
    get '/members' do 
        members = Member.all.order(created_at: :asc)
        members.to_json
      end
      post '/members' do
        member = Member.create(
          name: params[:name],
          email: params[:email],
          user_id: params[:user.id],
          project_id: params[:project.id]
        )
        member.to_json
      end
      patch '/members/:id' do
        member = Member.find(params[:id])
        member.update(
          name: params[:name],
          email: params[:email],
          user_id: params[:user.id],
          project_id: params[:project.id]
        )
        member.to_json
      end
    
      delete '/members/:id' do
        member = Member.find(params[:id])
        member.destroy
        member.to_json
      end
end