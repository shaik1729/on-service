Rails.application.routes.draw do
  get '/about_html_page' => 'visitors#about_html_page'
  get '/apps' => 'visitors#apps'
  get '/contact-us' => 'visitors#contact-us'
  get '/list-of-services' => 'visitors#list-of-services'
  get '/login_page_for_user' => 'visitors#login_page_for_user'
  get '/registration_page_for_user' => 'visitors#registration_page_for_user'
  get '/selection_page' => 'visitors#selection_page'
  get '/mechanics' => 'visitors#mechanics'

  root to: 'visitors#index'
  devise_for :users
  resources :users
end
