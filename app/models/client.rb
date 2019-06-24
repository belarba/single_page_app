class Client < ApplicationRecord
  validates :name, presence: true
  # validates_cpf :cpf
  # validates :email, format: { with: URI::MailTo::EMAIL_REGEXP }
end
