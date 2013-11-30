Awc2::Application.routes.draw do

  mount Ckeditor::Engine => '/ckeditor'

  # This line mounts Spree's routes at the root of your application.
  # This means, any requests to URLs such as /products, will go to Spree::ProductsController.
  # If you would like to change where this engine is mounted, simply change the :at option to something different.
  #
  # We ask that you don't use the :as option here, as Spree relies on it being the default of "spree"
  mount Spree::Core::Engine, :at => '/'
  Spree::Core::Engine.routes.prepend do
    # Add INDEX for user order history
    resources :orders, :only => [:index, :show, :update, :edit]
  end
  mount Monologue::Engine, at: '/news'
end

