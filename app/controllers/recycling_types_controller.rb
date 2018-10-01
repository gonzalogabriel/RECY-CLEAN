class RecyclingTypesController < ApplicationController
    def index
        @tipo = RecyclingType.all
        render json: @tipo, status: :ok
    end

    def create
        @nuevomaterial = RecyclingType.create(params.permit(:material, :description, :goal_value))
        puts "Ok"
        puts params
        puts "Ok"
        render json: @nuevomaterial, status: :created
    end

    def destroy
        @borrar_material = RecyclingType.find(params[:id])
        @borrar_material.destroy

        render json: @borrar_material, status: :destroyed
    end

    def update
        @actualizarTipos = RecyclingType.find(params[:id])
        @actualizarTipos.update(tiporecy_params)
        render json: @actualizarTipos, status: :updated  
    end

    def tiporecy_params
        params.permit(:material, :description, :goal_value)
    end


end
