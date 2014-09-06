class Categoria < ActiveRecord::Base
  has_many :productos
  
  validates :nombre, presence: true
  
  default_scope -> { order :nombre }
end
