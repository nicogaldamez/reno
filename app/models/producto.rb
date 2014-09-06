class Producto < ActiveRecord::Base
  belongs_to :categoria, :class_name => "Categoria", :foreign_key => "categoria_id"
  
  validates :nombre, presence: true
  
  default_scope -> { order :nombre }
end
