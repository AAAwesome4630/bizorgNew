Rails.application.routes.draw do
  
  root 'pages#index'
  
  resources :org_offers
  resources :biz_offers
  
  devise_for :businesses
  devise_for :orginizations
  
  namespace :api do
    scope :v1 do
      mount_devise_token_auth_for 'Business', at: 'biz_auth'
    
      mount_devise_token_auth_for 'Orginization', at: 'org_auth'
        as :orginization do
        # Define routes for Orginization within this block.
      end
      
      mount_devise_token_auth_for 'User', at: 'user_auth'
      as :user do
        # Define routes for User within this block.
      end
      resources :org_offers
      resources :biz_offers
      
    end
  end
  
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
