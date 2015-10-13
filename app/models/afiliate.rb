class Afiliate < ActiveRecord::Base
	  validates :name, :lastname, :business, :ci, :phone, :email, presence: true
	  validates :email, format: { with: /\A([^@\s]+)@((?:[-a-z0-9]+\.)+[a-z]{2,})\z/i, on: :create }, uniqueness: true
	  validates :ci, numericality: true
	  validates :phone, numericality: true

end
