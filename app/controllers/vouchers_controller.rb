class VouchersController < ApplicationController
    def index
        voucher = Voucher.find(params [:user_id]
        render json: voucher.users, status: :ok
        #autor = Autor.find(params [:autor_id])
    end
    #def create
    #end
end
