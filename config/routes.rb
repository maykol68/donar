Rails.application.routes.draw do
  root 'pages#home'
  devise_for :users
  
  get 'checkout', to: 'checkouts#show'
  get 'checkout/success', to: 'checkouts#success'
  get 'billing', to: 'billing#show'
end
