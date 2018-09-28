class UsersController < ApplicationController

    def index
        @users = User.all
        puts @users
        render json: @users, status: :ok
    end

    def create
        @user = User.create(params.permit(:document, :name, :surname, :account_contract, :birth_date, :email, :movil, :username, :password, :date_reg))
        
        puts "Ok"
        puts params
        puts "Ok"
        render json: @user, status: :created
        
    end 
end
   