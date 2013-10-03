AclWebsite::Application.routes.draw do
  get '/contact' => 'high_voltage/pages#show', id: 'contact', as: :contact
<<<<<<< HEAD

  # Although show isn't implemented, it was needed to prevent
  # undefined method error messages_url
  resources :messages, only: [:create, :show], format: :json
=======
>>>>>>> 14a812f222fb2e1def69dad6bc919abe330b969e

  root to: 'high_voltage/pages#show', id: 'home'
end
