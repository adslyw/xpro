Dba::Application.routes.draw do
  mount RedactorRails::Engine => '/redactor_rails'

  get "customer/info"
  get "customer/info_by_prefix"
  resources :prods

  resources :products

  resources :assets

  get "database/create"
  get "database/destroy"

  resources :users

  get "home/index"

  get "home/about"

  get "home/help"

  resources :menus do
    resources :submenus
  end
  resources :submenus
  resources :posts
  resources :sessions, only: [:new, :create, :destroy]
  resources :inputs
  resources :tasks
  match '/bcv', to: 'database#index',          via: 'get'
  match '/signup',  to: 'users#new',           via: 'get'
  match '/login',  to: 'sessions#new',         via: 'get'
  match '/logout', to: 'sessions#destroy',     via: 'delete'
  match '/dblink',  to: 'database#mkdblink',  via: 'get'
  match '/home',   to: 'home#index',          via: 'get'
  match 'assets/get/:id', to: 'assets#get', :as => 'download'
  match '/customer/info', to: 'customer#info', via: 'post', :as => 'costomer_info'
  match '/customer/info_by_prefix', to: 'customer#info_by_prefix', via: 'post', :as => 'costomer_info_by_prefix'
  match '/customer/bill', to: 'customer#bill', via: 'post', :as => 'costomer_bill'
  match 'assets/add_description/:id', to:'assets#add_description', via: 'get', :as => 'add_description'
  match 'assets/input', to:'assets#input', via: 'post'
  match "/delayed_job" => DelayedJobWeb, :anchor => false, via: [:get, :post]
  match '/run/:id', to: 'tasks#run', via: 'post', :as => 'task_runner'
  match '/apply/:id', to: 'inputs#apply', via: 'post', as: 'apply'
  # The priority is based upon order of creation:
  # first created -> highest priority.

  # Sample of regular route:
  #   match 'products/:id' => 'catalog#view'
  # Keep in mind you can assign values other than :controller and :action

  # Sample of named route:
  #   match 'products/:id/purchase' => 'catalog#purchase', :as => :purchase
  # This route can be invoked with purchase_url(:id => product.id)

  # Sample resource route (maps HTTP verbs to controller actions automatically):
  #   resources :products

  # Sample resource route with options:
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

  # Sample resource route with sub-resources:
  #   resources :products do
  #     resources :comments, :sales
  #     resource :seller
  #   end

  # Sample resource route with more complex sub-resources
  #   resources :products do
  #     resources :comments
  #     resources :sales do
  #       get 'recent', :on => :collection
  #     end
  #   end

  # Sample resource route within a namespace:
  #   namespace :admin do
  #     # Directs /admin/products/* to Admin::ProductsController
  #     # (app/controllers/admin/products_controller.rb)
  #     resources :products
  #   end

  # You can have the root of your site routed with "root"
  # just remember to delete public/index.html.
  root :to => 'home#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  # match ':controller(/:action(/:id))(.:format)'
end
