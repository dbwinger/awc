Spree::OrdersController.class_eval do
  # Add index view for user order history
  def index
    @orders = Spree::Order.complete.where(:user_id => spree_current_user.id)
    @title = "Order History"
  end
end

