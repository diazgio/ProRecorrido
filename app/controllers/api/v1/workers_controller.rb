class Api::V1::WorkersController < ApplicationController
  def index
    @workers = Worker.all
    render json: @workers
  end

  def create
    @worker = Worker.create(worker_params)
    if @worker.valid?
      render json: @worker, status: :created
    else
      render json: @worker.errors, status: :unprocessable_entity
    end
  end

  def update
    @worker = Worker.find(params[:id])
    if @worker.update(worker_params)
      render json: @worker, status: :ok
    else
      render json: @worker.errors, status: :unprocessable_entity
    end
  end

  def destroy
    @worker = Worker.find(params[:id])
    @worker.destroy
    head :no_content, status: :ok
  end

  private
    def worker_params
      params.require(:worker).permit(:nombre)
    end
end
