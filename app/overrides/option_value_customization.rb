Deface::Override.new(:virtual_path  => "spree/admin/option_types/edit",
                     :insert_before => "th.actions",
                     :text          => "<th><%= Spree.t(:weight) %></th>" +
                                       "<th><%= Spree.t(:price_multiplier) %></th>",
                     :name          => "add_option_types_headers")
Deface::Override.new(:virtual_path  => "spree/admin/option_types/_option_value_fields",
                     :insert_before => "td.actions",
                     :text          =>
  "<td class='weight'><%= f.text_field :weight, :type => :number, :min => 0 %></td>" +
  "<td class='price_multiplier'><%= f.text_field :price_multiplier, :type => :number, :step => :any, :min => 0 %> </td>",
                     :name          => "add_option_values_columns")

