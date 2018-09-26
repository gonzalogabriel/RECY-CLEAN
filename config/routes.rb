Rails.application.routes.draw do
  
    resources :users do
        resources vouchers
    end
    resources :recycling_types 

    #Javi hermano hagale pues
    
    resources :collection_centers

end
