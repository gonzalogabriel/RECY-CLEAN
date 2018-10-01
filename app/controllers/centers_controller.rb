class CentersController < ApplicationController
  
    def index
        @listar_centros = Center.all
        puts @listar_centros
        render json: @listar_centros, status: :ok
    end
    
    def create
        @creaCentro = Center.create(user_params)
        
        render json: @creaCentro, status: :created
    end 
    
    def user_params
        params.permit(:name_center, :address_center, :gps_latitude, :gps_longitude, :email_center, :phone_center, :schedule)
    end
    
    def show
        @Seleccionar_Centro = Center.find(params[:id])
        render json: @Seleccionar_Centro, status: :ok
    end

    def update
        @actualizar_centro = Center.find(params[:id])
        @actualizar_centro.update(user_params)
        render json: @actualizar_centro, status: :actualizado  
    end

    def destroy
        @Borrar_Centro = Center.find(params[:id])
        @Borrar_Centro.destroy
        
        render json: @Borrar_Centro, status: :Borrado
    end




end



