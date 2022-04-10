class Api::V1::ContratosController < ApplicationController
  def index
    @contratos = Contrato.contratos_ordenados
    render json: @contratos
  end

  def create
    @contrato = Contrato.create(
      proyecto_id: params[:proyecto_id],
      duration: params[:duration],
      start_hour: params[:start_hour],
      end_hour: params[:end_hour],
      num_sem: params[:num_sem],
      nombre_c: params[:nombre_c]
    )
    workers =  params[:workers_attributes]
    workers.each do |worker_id|
      worker = Worker.where(id: worker_id)
      @contrato.workers << worker
    end
    @contrato.crear_disponibilidads
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

end
