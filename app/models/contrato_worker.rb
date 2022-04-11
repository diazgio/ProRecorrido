# frozen_string_literal: true

class ContratoWorker < ApplicationRecord
  belongs_to :contrato
  belongs_to :worker
end
