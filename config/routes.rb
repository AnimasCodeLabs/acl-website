AclWebsite::Application.routes.draw do
  get '/contact' => 'high_voltage/pages#show', id: 'contact', as: :contact

  # Although show isn't implemented, it was needed to prevent
  # undefined method error messages_url
  resources :messages, only: [:create, :show], format: :json

  root to: 'high_voltage/pages#show', id: 'home'
end
