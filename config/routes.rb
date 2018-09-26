Rails.application.routes.draw do
  
    resources :users do
        resources vouchers
    end
    resources :recycling_types 
    resources :collection_centers

end
