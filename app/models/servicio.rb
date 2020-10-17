class Servicio < ApplicationRecord
  belongs_to :cliente
  belongs_to :equipo
end
