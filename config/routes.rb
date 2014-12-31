Rails.application.routes.draw do

  get '/contact' => 'high_voltage/pages#show', id: 'contact', as: :contact

  root to: 'high_voltage/pages#show', id: 'home'
end
