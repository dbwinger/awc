Monologue::ApplicationController.class_eval do
#  include Spree::Core::ControllerHelpers::Order
  helper Spree::Core::Engine.helpers

  def monologue_current_user
    current_spree_user
  end

#  def try_spree_current_user
#    spree.try_spree_current_user
#  end
end

