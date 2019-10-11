Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #================================================================================
  # get 'posts/:id', to: 'posts#show'
  #================================================================================
#   There are a few elements of the application that can be refactored. Instead of the long, drawn out get route we placed in our routes.rb file, we can use Ruby's RESTful defaults and the resources method. Problem is, we only have one of the seven RESTful routes. Thankfully, we can pass in an only option, selecting which of the seven RESTful routes we care about. In this case, we only care about the show action.

# Remove:

# get 'posts/:id', to: 'posts#show'
# Replace with:

resources :posts, only: :show
end
