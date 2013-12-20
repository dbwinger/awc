Deface::Override.new(:virtual_path  => "spree/admin/orders/_form",
                     :insert_before => "erb[silent]:contains('order.adjustments.eligible.exists?')",
                     :partial       => "/spree/admin/orders/customer_details/show",
                     :name          => "add_customer_details_to_orders_page")

