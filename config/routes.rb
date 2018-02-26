Rails.application.routes.draw do
  get 'register/info1'

  get 'register/info2'

  get 'visitor/main'

  resources :posts
  resources :classifications
  resources :inquiries
  resources :products
  resources :categorie1s
  resources :categorie2s
  resources :categorie3s
  resources :products
  resources :orders
  resources :followers
  resources :baskets
  resources :products
  devise_for :users, :controllers => { omniauth_callbacks: 'user/omniauth_callbacks'}
  root 'welcome#index'
  # post '/welcome/find_kategorie2/:id' => 'welcome#find_kategorie2'
  post 'welcome/find_categorie2'
  post 'welcome/find_categorie3'
  get 'welcome/product/:id' => 'welcome#product'
  get 'welcome/page_scroll' => 'welcome#page_scroll', as: 'scroll'
  post 'welcome/add_cart'
  get 'welcome/cart'
  delete 'welcome/delete_product/:id' => 'welcome#delete_product'
  post 'welcome/add_order'
  get 'welcome/order'
  get 'welcome/post/:id' => 'welcome#post'
  get 'welcome/inquiry'
  post 'welcome/inquiryCreate'
  get 'welcome/myInquiry'
  post 'likes/update'
  post 'likes/count'
  delete 'welcome/delete_inquiry/:id' => 'welcome#delete_inquiry'
  get 'welcome/show_product1/:id' => 'welcome#show_product1'
  get 'welcome/show_product2/:id' => 'welcome#show_product2'
  get 'welcome/show_product3/:id' => 'welcome#show_product3'
  post 'welcome/orderCreate'
  delete 'welcome/delete_order/:id' => 'welcome#delete_order'

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'

  # Example of regular route:
  #   get 'products/:id' => 'catalog#view'

  # Example of named route that can be invoked with purchase_url(id: product.id)
  #   get 'products/:id/purchase' => 'catalog#purchase', as: :purchase

  # Example resource route (maps HTTP verbs to controller actions automatically):
  # 
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
  #     #   end
end
