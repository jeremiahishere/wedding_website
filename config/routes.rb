Rails.application.routes.draw do
  get 'rsvp' => 'pages#rsvp'
  post 'rsvps' => 'pages#save_rsvp'

  root 'pages#index'
end
