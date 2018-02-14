class User < ApplicationRecord
  has_secure_password
  has_many :carted_products
  has_many :orders
  
  validates :name, presence: true
  validates :email, presence: true, uniqueness: true

  def cart 
    carted_products.where(status: "carted")
  end 
end
