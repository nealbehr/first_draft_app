Rails.application.routes.draw do

  devise_for :users
  root "home#home"
  resources :users, only: [:index]
  get "/shop", controller: "shop", action: "shop"
  get "/home", controller: "home", action: "home"

  # Routes for the Interaction resource:
  get "/interactions/autonew/:user_id/:product_id/:like", :controller => "interactions", :action => "autonew"

  get "/interactions/reset", :controller => "interactions", :action => "reset"
  get "/interactions/autoedit/:id", :controller => "interactions", :action => "autoedit"
  # CREATE
  get "/interactions/new", :controller => "interactions", :action => "new"
  post "/create_interaction", :controller => "interactions", :action => "create"

  # READ
  get "/interactions", :controller => "interactions", :action => "index"
  get "/interactions/:id", :controller => "interactions", :action => "show"

  # UPDATE
  get "/interactions/:id/edit", :controller => "interactions", :action => "edit"
  post "/update_interaction/:id", :controller => "interactions", :action => "update"

  # DELETE
  get "/delete_interaction/:id", :controller => "interactions", :action => "destroy"


  #------------------------------

  # Routes for the Product resource:
  # CREATE
  get "/products/new", :controller => "products", :action => "new"
  post "/create_product", :controller => "products", :action => "create"

  # READ
  get "/products", :controller => "products", :action => "index"
  get "/products/:id", :controller => "products", :action => "show"
  get "/products/user/index", :controller => "products", :action => "indexuser"
  get "/products/user/:id", :controller => "products", :action => "showuser"
  get "/products/userinlist/:id", :controller => "products", :action => "showuserinlist"

  # UPDATE
  get "/products/:id/edit", :controller => "products", :action => "edit"
  post "/update_product/:id", :controller => "products", :action => "update"

  # DELETE
  get "/delete_product/:id", :controller => "products", :action => "destroy"
  #------------------------------

  # Routes for the Interaction resource:
  # CREATE
  get "/interactions/new", :controller => "interactions", :action => "new"
  post "/create_interaction", :controller => "interactions", :action => "create"

  get "/interactions/autonew/:prod_id/:like", :controller => "interactions", :action => "autonew"

  # READ
  get "/interactions", :controller => "interactions", :action => "index"
  get "/interactions/:id", :controller => "interactions", :action => "show"

  # UPDATE
  get "/interactions/:id/edit", :controller => "interactions", :action => "edit"
  post "/update_interaction/:id", :controller => "interactions", :action => "update"

  # DELETE
  get "/delete_interaction/:id", :controller => "interactions", :action => "destroy"
  #------------------------------

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
