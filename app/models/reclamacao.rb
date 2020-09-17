class Reclamacao < ApplicationRecord
  validates :titulo, presence: true, length: {maximum: 40}
  validates :texto, presence: true, length: {minimum: 10}
  validates :categoria, presence:true
  belongs_to :usuario
end
