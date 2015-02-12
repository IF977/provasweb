Rails.application.routes.draw do


  resources :answers

  resources :proof_answereds

  resources :proof_issues

  resources :proofs

  resources :alternatives

  resources :quests

  resources :issues

  resources :subjects

  resources :disciplines

  resources :teachers
  
   resources :issues do
      resources :alternatives
   end
   
    resources :issues do
      resources :proof_issues
   end
   
   resources :disciplines do
      resources :subjects
   end
   
     resources :teachers do
      resources :disciplines
   end
   
       resources :subjects do
      resources :proofs
   end
   
         resources :proofs do
      resources :proof_issues
   end
  
  
      resources :proof_issues do
      resources :answers
   end
   
       resources :proof_answereds do
      resources  :answers
   end
   
       resources :answers do
      resources  :alternatives
   end
  resources :testa_token
  
  post 'proof_answereds/testa_token' => 'proof_answered#testa_token' 
  
   resources :relatorio

  get 'sessions/new'


  get 'users/new'
  get "dados_pessoais" => "teachers#new", :as => "dados_pessoais"
  get "log_out" => "sessions#destroy", :as => "log_out"
get "log_in" => "sessions#new", :as => "log_in"
get "sign_up" => "users#new", :as => "sign_up"
get "disciplinas" => "disciplines", :as => "disciplinas"
root :to => "users#index"
resources :users
resources :sessions

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Example resource route with options:
  #   resources :products do
  #     member do
  #       get 'short'
  #       post 'toggle'
  #     end
  #
  #     collection do
  #       get 'sold'
  #     end
  #   end

  # Example resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Example resource route with more complex sub-resources:
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', on: :collection
  #     end
  #   end

  # Example resource route with concerns:
  #   concern :toggleable do
  #     post 'toggle'
  #   end
  #   resources :posts, concerns: :toggleable
  #   resources :photos, concerns: :toggleable

  # Example resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end
end
