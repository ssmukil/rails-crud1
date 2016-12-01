Rails.application.routes.draw do
  
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
# get 'schools/list'
#    get 'schools/new'
#    post 'schools/create'
#    patch 'schools/update'
#    get 'schools/list'
#    get 'schools/show'
#    get 'schools/edit'
#    get 'schools/delete'
#    get 'schools/update'
#    get 'schools/show_subjects'
root to: "school#index"
resources :schools 
# do
  resources :students
# end
end
