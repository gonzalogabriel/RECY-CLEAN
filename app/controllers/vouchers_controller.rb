class VouchersController < ApplicationController
    def index
        #@vouchers = Voucher.all
        #puts @vouchers
        #render json: @vouchers, status: :ok

        usuario = User.find(params[:user_id])
        puts usuario.vouchers

#        *Lets take an example : 
# GroupUser.find(params[:id]) will generate sql equivalent*
# select * from group_users where id = params[:id]

#        voucher = Voucher.where("user_id ="{params[:id]})
#        voucher = Voucher.find(params[:user_id]).where(:group_id => @group_id, :user_id =>
#      @user_id)

#'%#{params[:first_name]}%'")
        #render json: usuario.name, status: :ok 
        render json: usuario.vouchers, status: :ok
        #render json: voucher.user.surname, status: :ok
        #autor = Autor.find(params [:autor_id])
    end
    def create
        @crear_voucher = Voucher.create(recibo_params)
        render json: @crear_voucher, status: :voucher_creado
    end 

    def recibo_params
        params.permit(:metrics, :delivered, :delivery_date)
    end



end
