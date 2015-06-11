Rails.application.routes.draw do
  devise_for :admin_users, ActiveAdmin::Devise.config
  ActiveAdmin.routes(self)

  devise_scope :user do
  root to: "devise/registrations#edit"

  # Routes for the Check_in resource:
  # CREATE
  get "/check_ins/new", :controller => "check_ins", :action => "new"
  post "/create_check_in", :controller => "check_ins", :action => "create"

  # READ
  get "/check_ins", :controller => "check_ins", :action => "index"
  get "/check_ins/:id", :controller => "check_ins", :action => "show"

  # UPDATE
  get "/check_ins/:id/edit", :controller => "check_ins", :action => "edit"
  post "/update_check_in/:id", :controller => "check_ins", :action => "update"

  # DELETE
  get "/delete_check_in/:id", :controller => "check_ins", :action => "destroy"
  #------------------------------

  # Routes for the Flash resource:
  # CREATE
  get "/flashes/new", :controller => "flashes", :action => "new"
  post "/create_flash", :controller => "flashes", :action => "create"

  # READ
  get "/flashes", :controller => "flashes", :action => "index"
  get "/flashes/:id", :controller => "flashes", :action => "show"

  # UPDATE
  get "/flashes/:id/edit", :controller => "flashes", :action => "edit"
  post "/update_flash/:id", :controller => "flashes", :action => "update"

  # DELETE
  get "/delete_flash/:id", :controller => "flashes", :action => "destroy"
  #------------------------------

  # Routes for the Location resource:
  # CREATE
  get "/locations/new", :controller => "locations", :action => "new"
  post "/create_location", :controller => "locations", :action => "create"

  # READ
  get "/locations", :controller => "locations", :action => "index"
  get "/locations/:id", :controller => "locations", :action => "show"

  # UPDATE
  get "/locations/:id/edit", :controller => "locations", :action => "edit"
  post "/update_location/:id", :controller => "locations", :action => "update"

  # DELETE
  get "/delete_location/:id", :controller => "locations", :action => "destroy"
  #------------------------------

  devise_for :users

  get 'users/:id' => 'users#show'
  resources :users, only: [:show]

  # get 'users/:id' => 'users#show', as: :user
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
end
