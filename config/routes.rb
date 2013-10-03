AclWebsite::Application.routes.draw do

  # Although show isn't implemented, it was needed to prevent
  # undefined method error messages_url
  resources :messages, only: [:create, :show], format: :json

  get '/contact' => 'high_voltage/pages#show', id: 'contact', as: :contact

  if Rails.env.development?
    mount MailPreview => 'mail_view'
  end

  root to: 'high_voltage/pages#show', id: 'home'
end
