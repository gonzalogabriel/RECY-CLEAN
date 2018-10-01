class UsersController < ApplicationController

    def index
        @users = User.all
        puts @users
        render json: @users, status: :ok
    end

    def create
        @user = User.create(user_params)
        puts "Ok"
        puts params
        puts "Ok"
        render json: @user, status: :created
    end 

    def show
        @user = User.find(params[:id])
        render json: @user, status: :ok
    end

    def update
        @user = User.find(params[:id])
        @user.update(user_params)
        render json:@user, status: :upgrated  
    end
    
    def destroy
        @user = User.find(params[:id])
        @user.destroy
        render json:@user, status: :destroyed
    end

    def user_params
        params.permit(:document, :name, :surname, :account_contract, :birth_date, :email, :movil, :username, :password, :date_reg)
    end


end
   