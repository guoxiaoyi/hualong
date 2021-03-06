Rails.application.routes.draw do



  namespace :admin do
    resources :product_categories
    resources :products
    resources :contents
  end
  namespace :zh do
    get 'welcome/index'
    resources :article_categories, only: [:index, :show],path: 'a' do
      resources :articles, only: [:index, :show],path: 'list'
    end
    resources :articles, only: [:index, :show]
    resources :pages, only: [:show], path: 'p'
    resources :products, only: [:index,:show]
    resources :contents
  end
  namespace :en do
    get 'welcome/index'
    resources :article_categories, only: [:index, :show],path: 'a' do
      resources :articles, only: [:index, :show],path: 'list'
    end
    resources :articles, only: [:index, :show]
    resources :pages, only: [:show], path: 'p'
    resources :products, only: [:index,:show]
    resources :contents
  end

  namespace :jp do
    get 'welcome/index'
    resources :contents
  end

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  root 'jp/welcome#index'

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

  mount WizcmsArticle::Engine, :at => "/"
  mount WizcmsLink::Engine, :at => "/"
  namespace :admin do
    get '/' => 'application#portal'

    get '/login' => 'application#login'
    post '/create_session' => 'application#create_session'
    match '/destroy_session' => 'application#destroy_session', via: [:get,:post]

    resources :managers
    resources :activity_categories
    resources :activities
    resources :teacher_activities
  end
end
