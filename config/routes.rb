Rails.application.routes.draw do
  get 'sessions/new'

  get 'sessions/create'

  get 'sessions/destroy'
  
  get 'login', to: 'sessions#new', as: 'login'
  delete 'logout', to: 'sessions#destroy', as: 'logout'  
  resources :sessions


  resources :fruitsales
  resources :products
  resources :promotions
  get 'report/reportlist'

  get 'report/customerlist'

  get 'report/productlist'

  get 'report/salelist'

  get 'report/customerlist'

  resources :sales
  resources :suppliers
  resources :customers
  get 'home/about'

  get 'home/contact'
 
  get 'home/index'
  
  get 'home/privacy'
  
  get 'home/help'
  
  #cart
  get 'home/cart'
  get 'cart', to: 'home#cart', as: 'cart'
  
  get 'home/catalog'
  post 'home/buy'
  post 'home/updatecart'
  post 'home/checkout'
  
  #test to post products
  get 'products/show'
  get 'suppliers/show'
  
  get "home/search"
  post "home/search"

  root 'home#index'

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
