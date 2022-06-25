class ApplicationController < Sinatra::Base
  set :default_content_type, 'application/json'
  
  get '/messages' do
    messages = Message.all_messages 
    messages.to_json
  end

  post '/messages' do 
    messages =  Message.create (
      body: params[:body]
      username: params[:username]
    )
  end

end
