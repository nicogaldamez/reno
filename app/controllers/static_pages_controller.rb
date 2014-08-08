class StaticPagesController < ApplicationController
  
  def banderas
    render layout: 'prelogin'    
  end
  
  def index
  end
  
  def compromiso    
  end
  
  def instalaciones 
    
  end
  
  def clientes     
  end
  
  def productos    
    render 'en_construccion'    
  end
  
  def contacto    
    render 'en_construccion'    
  end
  
end
