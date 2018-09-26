Rails.application.routes.draw do
  
    resources :users do
        resources :vouchers
    end
    
    resources :recycling_types do
        resources :collection_centers
    end
    
    resources :collection_centers do
        resources :recycling_types
    end
end
