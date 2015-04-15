Rails.application.routes.draw do
  devise_for :users # , controllers: { sessions: "users/sessions" }
  get 'password_resets/create'

  get 'password_resets/edit'

  get 'password_resets/update'
  # namespace :admin do
  #   constraints subdomain: 'admin' do
  #     resources :employees
  #   end
  # end
  # authenticate :user do
  #   scope "/admin" do
  #     resources :employees, only: [:new, :create, :edit, :update, :destroy]
  #   end
  # end
  # resources :employees, only: [:index, :show]
  resources :employees do
    member do
      get 'terminate'
    end
    collection do
      get 'contact'
    end
  end
  root 'employees#home'
  resources :projects do
    member do
      get 'close'
      get 'view'
      get 'abondoned'
      get 'suspend'
    end
  end
  resources :subprojects do
    member do
      get 'view'
    end
  end
  resources :tasks do
    member do
      get 'view'
      get 'status_change'
    end
  end
  resources :employees do
    resources :projects do
      resources :subprojects do
        resources :tasks do
          resources :project_details
        end
      end
    end
  end
  resources :project_details
 
  resources :employees
  resources :projects do
    resources :subprojects 
    resources :tasks
  end
  resources :subprojects do
    resources :tasks 
  end
  resources :projects do
    resources :subprojects do
      resources :tasks
    end
  end
  resources :projects do
    resources :subprojects do
      resources :tasks do
        resources :issues
      end
    end
  end
  resources :issues do
    member do
      get 'view'
    end
  end
 

  # The priority is based upon order of creation: first created -> highest priority.
  # See how all your routes lay out with "rake routes".

  # You can have the root of your site routed with "root"
  # root 'welcome#index'  # Example of regular route:
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
