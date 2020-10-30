Rails.application.routes.draw do
  devise_for :mechanics
  get '/about_html_page' => 'visitors#about_html_page'
  get '/apps' => 'visitors#apps'
  get '/contact-us' => 'visitors#contact-us'
  get '/list-of-services' => 'visitors#list-of-services'
  get '/login_page_for_user' => 'visitors#login_page_for_user'
  get '/registration_page_for_user' => 'visitors#registration_page_for_user'
  # get '/selection_page' => 'visitors#selection_page'
  # get '/mechanics' => 'visitors#mechanics'
  get '/login_page_for_mechanic' => 'visitors#login_page_for_mechanic'
  get '/registration_page_for_mechanic' => 'visitors#registration_page_for_mechanic'
  get '/user_display_loc_map' => 'visitors#user_display_loc_map'
  get '/mechanic_set_loc_map' => 'visitors#mechanic_set_loc_map'
  # get '/mechanic_edit_profile' => 'visitors#mechanic_edit_profile'
  get '/mechanic_profile' => 'visitors#mechanic_profile'
  get '/admin' => 'visitors#admin'

  root to: 'visitors#index'
  devise_for :users
  resources :users
  resources :mechanics
end
