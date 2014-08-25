class ContactosController < ApplicationController
  def new
    @contacto = Contacto.new
  end

  def create
    @contacto = Contacto.new(params[:contacto])
    if @contacto.valid?
      ContactoMailer.contacto(params[:contacto]).deliver
      redirect_to inicio_path, notice: "Se ha enviado el correo. Gracias por contactarse con nosotros"
    else
      render "new"
    end
  end
end
