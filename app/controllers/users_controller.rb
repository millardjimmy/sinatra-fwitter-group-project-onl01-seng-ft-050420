class UsersController < ApplicationController
    
    configure do
        enable :sessions
        set :session_secret, "secret"
        set :public_folder, 'public'
        set :views, 'app/views'
    end

    get '/users/:slug' do
        @user = User.find_by_slug(params[:slug])
        erb :'users/show'
    end
end
