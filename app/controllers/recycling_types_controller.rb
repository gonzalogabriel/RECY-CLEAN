class RecyclingTypesController < ApplicationController
    def index
        @tipo = RecyclingType.all
        render json: @tipo, status: :ok
    end
end
