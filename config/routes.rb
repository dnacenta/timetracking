  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  get '/', to: 'site#home'
  get '/contact', to: 'site#contact'

  get '/calculator', to: 'site#calculator'
  post '/calculate', to: 'site#calculate'

  get '/project', to: 'projects#index'
  get '/project/:id', to: 'projects#show'
  get '/new', to: 'projects#new'

  post '/new', to: 'projects#create'
end
