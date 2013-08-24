Deface::Override.new(:virtual_path  => "spree/shared/_user_form",
                     :insert_before => "div#password-credentials",
                     :text          => "<p><%=f.label :name, Spree.t(:name) %><br />
  <%= f.text_field :name, :class => 'title' %></p>",
                     :name          => "add_name_to_users_edit")

