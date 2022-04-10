class Api::V1::DisponibilidadsController < ApplicationController

  def index
    @disponibilidads = Disponibilidad.includes(:contrato).where(contrato_id: params[:contrato_id])
    @workers = Contrato.find(params[:contrato_id]).workers

    @data = { 
      "disponibilidads" => @disponibilidads,
      "workers" => @workers
    }
    render json: @data
  end

  def update

  end


end
