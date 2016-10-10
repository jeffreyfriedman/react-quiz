Rails.application.routes.draw do
  root 'static_pages#index'
  namespace :api, :defaults => { :format => 'json' } do
    resources :questions, only: [:index, :show]
    match 'question/random', :to => 'questions#index', via: [:get]
  end

end
