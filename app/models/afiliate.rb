class Afiliate < ActiveRecord::Base
	  validates :name, :lastname, :business, :ci, :phone, :email, :presence => {:message => "No puede estar vacío"}
	  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create, message: "No es un correo electrónico válido" }, :uniqueness => {:message => "Ya existe alguien afiliado con ese correo"}
	  validates :ci, :numericality => {:message => "Debe ser un número"}
	  validates :phone, :numericality => {:message => "Debe ser un número"}

end
