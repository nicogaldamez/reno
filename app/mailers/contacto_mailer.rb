class ContactoMailer < ActionMailer::Base

  def contacto(datos)
    @datos = datos
    mail from: datos[:correo], to: ENV['CORREO_CONTACTO'], subject: "Contacto Sitio: #{datos[:asunto]}"
  end
end
