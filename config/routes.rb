  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

Rails.application.routes.draw do
  get '/', to: 'site#home'
  get '/contact', to: 'site#contact'

  get '/calculator', to: 'site#calculator'
  post '/calculate', to: 'site#calculate'

  get '/project', to: 'projects#index'
  get '/project/:id', to: 'projects#show'
  get '/new', to: 'projects#new'
  get '/project/:id/delete', to: 'projects#delete'
  get '/delete_all', to: 'projects#delete_all'

  post '/new', to: 'projects#create'

  get '/project/:project_id/time_entries', to: 'time_entries#index'
  get '/project/:project_id/time_entries/new', to: 'time_entries#new'
  get '/project/:project_id/time_entries/:id/edit', to: 'time_entries#edit'
  get '/project/:project_id/time_entries/:id/delete', to: 'time_entries#delete'

  post '/project/:project_id/time_entries', to: 'time_entries#create', as: :project_time_entries
  patch '/project/:project_id/time_entries/:id', to: 'time_entries#update', as: :project_time_entry
end
