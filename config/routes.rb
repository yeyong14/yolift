Yolift::Application.routes.draw do


		resources :bananers
		resources :products do 
			resources :line_items
		end
		resources :categories, only:[:show, :index]
		resource :cart
		resources :orders
		resources :abouts
		resources :servers
		resources :centers
		resources :contacts
		resources :jobs
		resources :affiliates
		resources :messages
		resources :lists
		resources :guides
		resources :payments
		resources :items
		resources :ships
		resources :aftermarkets
		resources :case_items
		resources :repairs
		resources :zixuns
		resources :catelogs
		resources :catelog_images
		resources :videos
		resources :center_images
		resources :contact_images
		resources :server_images
		resources :product_images
		resources :demands
		match '/search', to: "products#search"
		match '/sitemap', to: "home#sitemap"
		match '/link', to: "home#link"
		match '/error', to: 'home#error'
		#match '/dashboard', to: "home#dashboard"
		root to: 'home#index'
		
		
		devise_for :users
		#devise_for :admins

		devise_for :admin_users, ActiveAdmin::Devise.config
		ActiveAdmin.routes(self)

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
  # root :to => 'welcome#index'

  # See how all your routes lay out with "rake routes"

  # This is a legacy wild controller route that's not recommended for RESTful applications.
  # Note: This route will make all actions in every controller accessible via GET requests.
  #match ':controller(/:action(/:id))(.:format)'
	#match '*not_found', to: "rescue_errors#error_404"
end
