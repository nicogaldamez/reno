RenoApp::Application.routes.draw do

  root 'static_pages#banderas'
  
  resources :contactos
  
  get '/' => 'static_pages#index'
  get 'inicio' => 'static_pages#index'
  get 'compromiso' => 'static_pages#compromiso'
  get 'instalaciones' => 'static_pages#instalaciones'
  get 'clientes' => 'static_pages#clientes'
  get 'productos' => 'static_pages#productos'
end
