Spree::ProductsController.class_eval do
  def import
    Spree::Product.import(params[:file])
    redirect_to spree_admin_products_path, notice: "Products imported."
  end
end

