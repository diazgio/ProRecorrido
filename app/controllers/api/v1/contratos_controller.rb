class Api::V1::ContratosController < ApplicationController
  def index
    @contratos = Contrato.all
  end

  def create
    @Proyectos = Proyecto.all
    @contrato = Contrato.create(contratos_params)
    if @contrato.valid?
      render json: @contrato, status: :created
    else
      render json: @contrato.errors, status: :unprocessable_entity
    end
  end

  def update
    @contrato = Contrato.find(params[:id])
    if @contrato.update(proyecto_params)
      render json: @contrato, status: :ok
    else
      render json: @contrato.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @contrato = Contrato.find(params[:id])
    @contrato.destroy
    head :no_content, status: :ok
  end

  private

  def contratos_params
    params.require(:contrato).permit(:duration, :start_hour, :end_hour, :proyecto_id, workers_attributes: [:id, :nombre])
  end
end
