Rails.application.routes.draw do
  
    resources :users do
        resources :vouchers
    end
    
    resources :recycling_types do
        resources :centers
    end
    
    resources :centers do
        resources :recycling_types
    end
end
