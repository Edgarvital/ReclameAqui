class Usuario < ApplicationRecord
  has_secure_password
  has_many :reclamacaos, dependent: :destroy
  validates :login, presence: true, length: {minimum: 4},  uniqueness: {case_sensitive: true}
  validates :password_digest, presence: true, length: {minimum: 8}
  validates :nome, presence: true, length: {minimum: 4}
end
