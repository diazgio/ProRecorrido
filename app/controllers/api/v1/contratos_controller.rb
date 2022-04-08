class Api::V1::ContratosController < ApplicationController
  def index
    @contratos = Contrato.all
  end

  def create
    @contrato = Contrato.create(contratos_params)
    @contrato.proyecto_id = params[:proyecto_id]
    if @contrato.valid?
      @contrato.ejemplo
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
    params.require(:contrato).permit(:duration, :start_hour, :end_hour, workers_attributes: [:id, :nombre])
  end

  def ejemplo
    metodo_del_modelo
  end
end
