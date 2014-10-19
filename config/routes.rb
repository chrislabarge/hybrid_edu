HybridEdu::Application.routes.draw do
  get "printables/letter_tracing"
  get "printables/letters_in_words"
  get "printables/letter_search"
resources :users
resources :sessions, only: [:new, :create, :destroy]  #this is so not all the Restful routes like 'show' and 'edit' dont get passed sense we have no need for them for the sessions (token)

root  'static_pages#home'
match '/signup',     to:	'users#new',							via: 'get'
match '/signin',     to: 'sessions#new',						via: 'get'
match '/signout',    to: 'sessions#destroy',				via: 'delete' #delete here because it destroys the session in order to sign out
match '/games',   	 to: 'static_pages#games',    	via: 'get'
match '/about',   	 to: 'static_pages#about',    	via: 'get'
match '/contact',    to: 'static_pages#contact',    via: 'get'
match '/printables', to: 'static_pages#printables', via: 'get' 
match '/lessons', 	 to: 'static_pages#lessons', via: 'get'
match '/common_core', to: 'static_pages#common_core', via: 'get'
match '/account', to: 'static_pages#account', via: 'get'

match '/lettertrace', 	 to: 	'static_pages#lettertrace', via: 'get'  
match '/letters_in_words', to: 	'static_pages#letters_in_words', via: 'get'

match '/game_letter_search', to: 'static_pages#game_letter_search', via: 'get' 
match '/game_letter_search_2', to: 'static_pages#game_letter_search_2', via: 'get' 
match '/game_letter_search_3', to: 'static_pages#game_letter_search_3', via: 'get' 
match '/game_letter_search_4', to: 'static_pages#game_letter_search_4', via: 'get' 
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
