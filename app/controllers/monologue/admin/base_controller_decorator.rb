Monologue::Admin::BaseController.class_eval do

  def authenticate_user!
    if !current_spree_user || !current_spree_user.has_spree_role?("admin")
      redirect_to spree.login_path
    end
  end

end

