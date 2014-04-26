RitlyApp::Application.routes.draw do
  
resources :links

root 'links#new'

get '/:rando', to: 'links#redirecty'
# get '/:rando/preview', to 'links#preview'

end



# Prefix Verb   URI Pattern               Controller#Action
#     links GET    /links(.:format)          links#index
#           POST   /links(.:format)          links#create
#  new_link GET    /links/new(.:format)      links#new
# edit_link GET    /links/:id/edit(.:format) links#edit
#      link GET    /links/:id(.:format)      links#show
#           PATCH  /links/:id(.:format)      links#update
#           PUT    /links/:id(.:format)      links#update
#           DELETE /links/:id(.:format)      links#destroy
#      root GET    /                         links#index