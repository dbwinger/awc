Spree::ProductsController.class_eval do
  def index
    @searcher = build_searcher(params)
    @products = @searcher.retrieve_products.ascend_by_name
  end
end

