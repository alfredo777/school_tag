Rails.application.routes.draw do
  root 'landing#index'
  
  ######## gets ########
  get 'create/tag'

  get 'create/edit'

  get 'create/delete'

  get 'create/report'

  get 'institution/create'

  get 'institution/add_to_institution'

  get 'institution/suggest'

  get 'user/create'

  get 'user/edit'

  get 'user/delete'

  get 'user/log_in'

  get 'user/log_out'

  get 'landing/index'

  get 'landing/comunity'

  ######## posts #######

  post 'create/tag'

  post 'create/edit'

  post 'create/delete'

  post 'create/report'

  post 'institution/create'

  post 'institution/add_to_institution'

  post 'institution/suggest'

  post 'user/create'

  post 'user/edit'

  post 'user/delete'

  post 'user/log_in'

  post 'user/log_out'

  post 'landing/index'

  post 'landing/comunity'

  
end
