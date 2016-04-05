Rails.application.routes.draw do
  
  root to: 'static_pages/home', via: :get
 

  get 'static_pages/help'

  get 'static_pages/about'
end
