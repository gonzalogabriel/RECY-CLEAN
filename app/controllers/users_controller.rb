class UsersController < ApplicationController

    def index
        @users = User.all
        puts @users
        render json: @users, status: :ok

    end

end
