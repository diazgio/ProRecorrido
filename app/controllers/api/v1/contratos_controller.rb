class Api::V1::ContratosController < ApplicationController
  def index
    @contratos = Contrato.all
  end

  def create
  end

  def update
  end

  def destroy
  end

  private

  def contratos_params
    params.require(:contrato).permit(:duration, :start_hour, :end_hour)
  end
end
