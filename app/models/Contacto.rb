class Contacto
  include ActiveAttr::Model
  
  attribute :nombre
  attribute :correo
  attribute :asunto
  attribute :cuerpo

  validates :nombre,  :presence => true
  validates :asunto,  :presence => true
  validates :cuerpo,  :presence => true
  VALID_EMAIL_REGEX = /\A[\w+\-.]+@[a-z\d\-.]+\.[a-z]+\z/i
  validates :correo, presence:   true,
                    format:     { with: VALID_EMAIL_REGEX }
end