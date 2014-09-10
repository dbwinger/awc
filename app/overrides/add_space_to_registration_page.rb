Deface::Override.new(:virtual_path => 'spree/user_sessions/new',
  :name => 'add_space_to_registration_page',
  :replace_contents => "[data-hook='login']",
  :text => "
    <%= render :partial => 'spree/shared/login' %>
    <%= Spree.t(:or) %>&nbsp;<%= link_to Spree.t(:create_a_new_account), spree.signup_path %> | <%= link_to Spree.t(:forgot_password), spree.recover_password_path %>
  ")
