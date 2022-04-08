class Api::V1::ProyectosController < ApplicationController
  def index
    @proyectos = Proyecto.all
    render json: @proyectos
  end

  def show
    render json: @proyecto
  end

  def create
    @proyecto = Proyecto.create(proyecto_params)
    if @proyecto.valid?
      render json: @proyecto, status: :created, location: api_v1_proyectos_path(@proyecto)
    else
      render json: @proyecto.errors, status: :unprocessable_entity
    end
  end

  def update
    @proyecto = Proyecto.find(params[:id])
    if @proyecto.update(proyecto_params)
      render json: @proyecto, status: :ok
    else
      render json: @proyecto.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @proyecto = Proyecto.find(params[:id])
    @proyecto.destroy
    head :no_content, status: :ok
  end

  private

  def proyecto_params
    params.require(:proyecto).permit(:nombre_empresa)
  end
end
