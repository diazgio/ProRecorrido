# frozen_string_literal: true
# rubocop:disable Layout/EmptyLineAfterMagicComment
# rubocop:disable Style/Documentation

module Api
  module V1
    class DisponibilidadsController < ApplicationController
      def index
        @disponibilidads = Disponibilidad.includes(:contrato).where(contrato_id: params[:contrato_id])
        @workers = Contrato.find(params[:contrato_id]).workers

        @data = {
          'disponibilidads' => @disponibilidads,
          'workers' => @workers
        }
        render json: @data
      end

      def update; end
    end
  end
end
# rubocop:enable Style/Documentation
# rubocop:enable Layout/EmptyLineAfterMagicComment
