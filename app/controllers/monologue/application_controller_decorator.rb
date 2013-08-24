Monologue::ApplicationController.class_eval do
  def monologue_current_user
    current_spree_user
  end
end

