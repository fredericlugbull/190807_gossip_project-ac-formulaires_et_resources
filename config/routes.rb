Rails.application.routes.draw do
  get '/user/:id', to: 'home#user_page', as: :user_id
  get '/gossip/:id', to: 'home#gossip_show', as: :gossip_id
  get '/home', to: 'home#home_page'
  get '/welcome/:first_name', to: 'home#landing_page'
  get '/contact', to: 'home#contact_show'
  get '/team', to: 'home#show_team'

# For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end


