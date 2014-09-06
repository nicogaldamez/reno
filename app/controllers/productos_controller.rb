class ProductosController < ApplicationController
  before_filter :set_categorias
  
  
  def index
    @productos = Producto.all
  end
  
  def por_categoria
    @categoria = Categoria.find(params[:categoria])
    @productos = @categoria.productos
  end
  
  private
  
  def set_categorias
    @categorias = Categoria.all
  end
end
