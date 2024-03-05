Rails.application.routes.draw do
  # get 'contacts/new'
  get 'homes/index'
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  root "homes#index"
  post 'homes/contact_us', to: 'homes#contact_us'
end
